#!/usr/bin/env python3
"""
SS14 Entity Translation Script
Uses OpenRouter (Qwen) to translate entity names/descriptions from en-US to zh-CN.
Usage: python3 scripts/translate_entities.py --api-key <key> [--category <category>] [--limit <n>]
"""

import argparse
import json
import os
import re
import sys
import time
from pathlib import Path

try:
    from openai import OpenAI
except ImportError:
    print("Installing openai package...")
    os.system(f"{sys.executable} -m pip install openai -q")
    from openai import OpenAI


REPO_ROOT = Path(__file__).parent.parent
PROTO_BASE = REPO_ROOT / "Resources" / "Prototypes" / "Entities"
LOCALE_BASE = REPO_ROOT / "Resources" / "Locale" / "zh-CN" / "entities"

# Game-specific terminology that must NOT be changed
GAME_TERMS = """
Game-specific terms to preserve as-is or use established translations:
- Nanotrasen → 纳米千能 (corporation name)
- bluespace → 蓝空
- plasma → 等离子 (the material, not blood)
- plasteel → 塑钛
- phoron → 等离子 (alternate name)
- ERT → ERT (Emergency Response Team, keep as ERT)
- CBURN → CBURN (keep as-is)
- PAI / P.A.I. → PAI
- P.A.C.M.A.N. → P.A.C.M.A.N. (generator name, keep as-is)
- S.U.P.E.R.P.A.C.M.A.N. → S.U.P.E.R.P.A.C.M.A.N. (keep as-is)
- durathread → 杜拉线
- pyrotton → 热棉
- bananium → 香蕉素
- goliath → 歌利亚 (creature)
- Ian → Ian (corgi, keep name)
- syndicate → 辛迪加
- Honk! Co. → Honk! Co.
- atmos / atmospherics → 大气
- sec / security → 安保
- maint / maintenance → 维修
- clown → 小丑
- mime → 哑剧演员
- chaplain → 牧师
- quartermaster → 物资主任
- warden → 典狱官
- HoS → 安保主任
- HoP → 人事主任
- CMO → 首席医疗官
- CE → 首席工程师
- RD → 研究主任
- AA → 全权通行证
"""

SYSTEM_PROMPT = f"""You are a professional game translator for Space Station 14, translating from English to Simplified Chinese (zh-CN).

{GAME_TERMS}

Rules:
1. Translate naturally and concisely. Keep the game's humorous tone where appropriate.
2. Output ONLY a JSON object with "name" and optionally "desc" fields.
3. If there is no description, omit the "desc" field.
4. Do not add explanations or extra text.
5. Keep proper nouns and abbreviations as specified above.
6. Descriptions should sound natural in Chinese game context.

Example input: {{"name": "steel sheet", "desc": "A sheet of steel."}}
Example output: {{"name": "钢板", "desc": "一张钢板。"}}
"""


def parse_entity_file(filepath: Path) -> list[dict]:
    """Parse a YAML entity prototype file and extract id, name, description."""
    entities = []
    current = {}
    with open(filepath, encoding="utf-8") as f:
        lines = f.readlines()
    for line in lines:
        if line.startswith("- type: entity"):
            if current and current.get("id"):
                entities.append(current)
            current = {}
        elif m := re.match(r"^  id: (.+)", line):
            raw_id = m.group(1).strip()
            # Strip inline YAML comments (e.g. "SomeId # comment")
            current["id"] = re.sub(r"\s*#.*$", "", raw_id).strip()
        elif m := re.match(r"^  name: (.+)", line):
            current["name"] = m.group(1).strip().strip("\"'")
        elif m := re.match(r"^  description: (.+)", line):
            current["description"] = m.group(1).strip().strip("\"'")
    if current and current.get("id"):
        entities.append(current)
    return entities


def load_existing_translations(ftl_path: Path) -> dict[str, tuple[str, str | None]]:
    """Load existing translations from a .ftl file. Returns {id: (name, desc)}."""
    translations = {}
    if not ftl_path.exists():
        return translations
    current_id = None
    current_name = None
    current_desc = None
    with open(ftl_path, encoding="utf-8") as f:
        for line in f:
            m = re.match(r"^ent-(\S+)\s*=\s*(.*)", line)
            if m:
                if current_id:
                    translations[current_id] = (current_name, current_desc)
                current_id = m.group(1)
                current_name = m.group(2).strip()
                current_desc = None
            elif re.match(r"^\s+\.desc\s*=\s*(.*)", line) and current_id:
                current_desc = re.match(r"^\s+\.desc\s*=\s*(.*)", line).group(1).strip()
    if current_id:
        translations[current_id] = (current_name, current_desc)
    return translations


def load_all_existing_ids() -> set[str]:
    """Load all already-translated entity IDs from all zh-CN entity .ftl files."""
    translated = set()
    if not LOCALE_BASE.exists():
        return translated
    for ftl_file in LOCALE_BASE.glob("*.ftl"):
        with open(ftl_file, encoding="utf-8") as f:
            for line in f:
                if m := re.match(r"^ent-(\S+)", line):
                    # Strip inline comments from legacy FTL entries (e.g. "ent-Id # comment = value")
                    translated.add(m.group(1).rstrip("#").strip())
    return translated


BATCH_SYSTEM_PROMPT = f"""You are a professional game translator for Space Station 14, translating from English to Simplified Chinese (zh-CN).

{GAME_TERMS}

Rules:
1. Translate naturally and concisely. Keep the game's humorous tone where appropriate.
2. You will receive a JSON array of objects, each with "id", "name", and optionally "desc".
3. Output ONLY a JSON array with the same number of objects, each containing "id", "name" (translated), and optionally "desc" (translated).
4. Do not add explanations or extra text outside the JSON array.
5. Keep proper nouns and abbreviations as specified above.
6. Descriptions should sound natural in Chinese game context.

Example input: [{{"id": "SteelSheet", "name": "steel sheet", "desc": "A sheet of steel."}}]
Example output: [{{"id": "SteelSheet", "name": "钢板", "desc": "一张钢板。"}}]
"""


def translate_batch(client: OpenAI, model: str, entities: list[dict]) -> list[dict | None]:
    """Translate a batch of entities using the LLM. Returns list of results (same order as input)."""
    payload = []
    for entity in entities:
        item = {"id": entity["id"], "name": entity["name"]}
        if entity.get("description"):
            item["desc"] = entity["description"]
        payload.append(item)

    prompt = f"Translate these SS14 entities to Chinese:\n{json.dumps(payload, ensure_ascii=False, indent=2)}"
    try:
        response = client.chat.completions.create(
            model=model,
            messages=[
                {"role": "system", "content": BATCH_SYSTEM_PROMPT},
                {"role": "user", "content": prompt},
            ],
            max_tokens=4000,
            temperature=0.3,
        )
        content = response.choices[0].message.content.strip()
        # Extract JSON array from response
        json_match = re.search(r'\[.*\]', content, re.DOTALL)
        if json_match:
            result_list = json.loads(json_match.group())
            # Build a map by id for safe lookup
            result_map = {r["id"]: r for r in result_list if isinstance(r, dict) and "id" in r}
            return [result_map.get(e["id"]) for e in entities]
        else:
            print(f"  WARNING: Could not parse batch response: {content[:200]}")
            return [None] * len(entities)
    except Exception as e:
        print(f"  ERROR in batch translation: {e}")
        return [None] * len(entities)


def write_ftl_file(ftl_path: Path, category_name: str, file_groups: dict[str, list[tuple[str, str, str | None]]]):
    """Append translated entries to a .ftl file (creates new file if it doesn't exist)."""
    ftl_path.parent.mkdir(parents=True, exist_ok=True)
    file_exists = ftl_path.exists()

    lines = []
    if not file_exists:
        lines.append(f"# {category_name}\n\n")

    for filename, entries in file_groups.items():
        lines.append(f"## {filename}\n\n")
        for entity_id, name, desc in entries:
            if name:
                lines.append(f"ent-{entity_id} = {name}\n")
                if desc:
                    lines.append(f"    .desc = {desc}\n")
                lines.append("\n")

    with open(ftl_path, "a", encoding="utf-8") as f:
        f.writelines(lines)
    print(f"  {'Appended to' if file_exists else 'Written:'} {ftl_path}")


def collect_entities_for_category(category_dir: Path, existing_ids: set[str]) -> dict[str, list[dict]]:
    """Collect untranslated entities from a prototype category directory."""
    file_groups = {}
    if not category_dir.exists():
        return file_groups
    for yml_file in sorted(category_dir.glob("**/*.yml")):
        rel_name = yml_file.name
        entities = parse_entity_file(yml_file)
        untranslated = [e for e in entities if e.get("name") and e["id"] not in existing_ids]
        if untranslated:
            file_groups[rel_name] = untranslated
    return file_groups


def main():
    parser = argparse.ArgumentParser(description="Translate SS14 entity files to zh-CN using Qwen via OpenRouter")
    parser.add_argument("--api-key", required=True, help="OpenRouter API key")
    parser.add_argument("--model", default="qwen/qwen3.6-plus:free", help="Model to use")
    parser.add_argument("--category", help="Specific prototype category to translate (e.g. 'Clothing/Back')")
    parser.add_argument("--output", help="Output .ftl filename (e.g. 'clothing-back.ftl')")
    parser.add_argument("--limit", type=int, default=0, help="Max entities to translate (0=all)")
    parser.add_argument("--dry-run", action="store_true", help="Show what would be translated without calling API")
    args = parser.parse_args()

    client = OpenAI(
        base_url="https://openrouter.ai/api/v1",
        api_key=args.api_key,
        default_headers={"HTTP-Referer": "https://github.com/rs-v/space-station-14-zh"},
    )

    existing_ids = load_all_existing_ids()
    print(f"Already translated: {len(existing_ids)} entity IDs")

    # Determine what to translate
    if args.category:
        categories = [(args.category, args.output or args.category.lower().replace("/", "-") + ".ftl")]
    else:
        # Default: translate common categories
        categories = [
            ("Clothing/Back", "clothing-back.ftl"),
            ("Clothing/Belt", "clothing-belt.ftl"),
            ("Clothing/Ears", "clothing-ears.ftl"),
            ("Clothing/Eyes", "clothing-eyes.ftl"),
            ("Clothing/Hands", "clothing-hands.ftl"),
            ("Clothing/Head", "clothing-head.ftl"),
            ("Clothing/Masks", "clothing-masks.ftl"),
            ("Clothing/Neck", "clothing-neck.ftl"),
            ("Clothing/OuterClothing", "clothing-outer.ftl"),
            ("Clothing/Shoes", "clothing-shoes.ftl"),
            ("Clothing/Uniforms", "clothing-uniforms.ftl"),
            ("Objects/Misc", "objects-misc.ftl"),
            ("Objects/Materials", "objects-materials-extra.ftl"),
            ("Objects/Devices", "objects-devices.ftl"),
        ]

    for category, output_filename in categories:
        category_dir = PROTO_BASE / category
        if not category_dir.exists():
            print(f"Skipping {category}: directory not found")
            continue

        file_groups = collect_entities_for_category(category_dir, existing_ids)
        total = sum(len(v) for v in file_groups.values())
        if total == 0:
            print(f"{category}: already fully translated, skipping")
            continue

        print(f"\n=== {category} ({total} entities to translate) ===")

        if args.dry_run:
            for filename, entities in file_groups.items():
                print(f"  {filename}: {len(entities)} entities")
                for e in entities[:3]:
                    print(f"    - {e['id']}: {e['name']!r}")
                if len(entities) > 3:
                    print(f"    ... and {len(entities) - 3} more")
            continue

        # Translate and collect results
        ftl_path = LOCALE_BASE / output_filename
        existing_translations = load_existing_translations(ftl_path)
        translated_groups = {}
        total_done = 0

        BATCH_SIZE = 20
        for filename, entities in file_groups.items():
            print(f"  Translating {filename} ({len(entities)} entities)...")
            translated_entries = []

            # Process in batches
            batch_entities = []
            for entity in entities:
                if args.limit and total_done >= args.limit:
                    break
                batch_entities.append(entity)
                if len(batch_entities) >= BATCH_SIZE:
                    results = translate_batch(client, args.model, batch_entities)
                    for ent, result in zip(batch_entities, results):
                        if result and result.get("name"):
                            name_zh = result["name"]
                            desc_zh = result.get("desc")
                            translated_entries.append((ent["id"], name_zh, desc_zh))
                            existing_ids.add(ent["id"])
                            print(f"    ✓ {ent['id']}: {ent['name']} → {name_zh}")
                        else:
                            translated_entries.append((ent["id"], ent["name"], ent.get("description")))
                    total_done += len(batch_entities)
                    batch_entities = []

            # Remaining entities in last batch
            if batch_entities and not (args.limit and total_done >= args.limit):
                results = translate_batch(client, args.model, batch_entities)
                for ent, result in zip(batch_entities, results):
                    if result and result.get("name"):
                        name_zh = result["name"]
                        desc_zh = result.get("desc")
                        translated_entries.append((ent["id"], name_zh, desc_zh))
                        existing_ids.add(ent["id"])
                        print(f"    ✓ {ent['id']}: {ent['name']} → {name_zh}")
                    else:
                        translated_entries.append((ent["id"], ent["name"], ent.get("description")))
                total_done += len(batch_entities)

            if translated_entries:
                translated_groups[filename] = translated_entries

        if translated_groups:
            category_display = category.replace("/", " - ")
            write_ftl_file(ftl_path, f"{category_display} - 服装", translated_groups)

    print("\nDone!")


if __name__ == "__main__":
    main()
