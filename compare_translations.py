#!/usr/bin/env python3
"""
比较 Resources 中 yml 文件和中文翻译 ftl 文件翻译条目的差异
输出 CSV 文件报告
"""

import os
import re
import csv
from pathlib import Path
from typing import Dict, Set, List, Tuple
import yaml


class TranslationComparator:
    def __init__(self, repo_root: str):
        self.repo_root = Path(repo_root)
        self.resources_dir = self.repo_root / "Resources"
        self.en_locale_dir = self.resources_dir / "Locale" / "en-US"
        self.zh_locale_dir = self.resources_dir / "Locale" / "zh-CN"
        self.prototypes_dir = self.resources_dir / "Prototypes"

        # 存储所有翻译条目
        self.en_ftl_entries: Dict[str, str] = {}  # key -> file_path
        self.zh_ftl_entries: Dict[str, str] = {}  # key -> file_path
        self.yml_translatable_entries: List[Tuple[str, str, str, str]] = []  # (file, entity_id, field, value)

        # 设置 YAML 自定义加载器
        self._setup_yaml_loader()

    def _setup_yaml_loader(self):
        """设置自定义 YAML 加载器以处理未知标签"""
        def unknown_constructor(loader, tag_suffix, node):
            if isinstance(node, yaml.MappingNode):
                return loader.construct_mapping(node)
            elif isinstance(node, yaml.SequenceNode):
                return loader.construct_sequence(node)
            else:
                return loader.construct_scalar(node)

        # 添加多标签处理器，忽略所有未知标签
        yaml.add_multi_constructor('!type:', unknown_constructor, Loader=yaml.SafeLoader)

    def parse_ftl_file(self, ftl_path: Path) -> Dict[str, str]:
        """解析 FTL 文件，提取所有翻译 key"""
        entries = {}
        if not ftl_path.exists():
            return entries

        try:
            with open(ftl_path, 'r', encoding='utf-8') as f:
                for line in f:
                    # 匹配 FTL 格式: key = value 或 key =
                    # 也匹配多行值的情况
                    match = re.match(r'^([a-zA-Z0-9_-]+)\s*=', line)
                    if match:
                        key = match.group(1)
                        entries[key] = str(ftl_path)
        except Exception as e:
            print(f"警告: 无法解析 FTL 文件 {ftl_path}: {e}")

        return entries

    def scan_ftl_directory(self, locale_dir: Path) -> Dict[str, str]:
        """扫描整个语言目录的所有 FTL 文件"""
        all_entries = {}

        if not locale_dir.exists():
            print(f"警告: 目录不存在 {locale_dir}")
            return all_entries

        for ftl_file in locale_dir.rglob("*.ftl"):
            entries = self.parse_ftl_file(ftl_file)
            all_entries.update(entries)

        return all_entries

    def parse_yml_file(self, yml_path: Path) -> List[Tuple[str, str, str, str]]:
        """解析 YAML 文件，提取可翻译的字段（name 和 description）"""
        entries = []

        try:
            with open(yml_path, 'r', encoding='utf-8') as f:
                docs = list(yaml.safe_load_all(f))

                for doc in docs:
                    if not doc:
                        continue

                    # 处理列表类型的文档（大多数原型文件是这样的）
                    items_to_process = []
                    if isinstance(doc, list):
                        items_to_process = doc
                    elif isinstance(doc, dict):
                        items_to_process = [doc]

                    # 处理每个项目
                    for item in items_to_process:
                        if not isinstance(item, dict):
                            continue

                        # 只处理 entity 类型
                        if item.get('type') == 'entity':
                            entity_id = item.get('id', 'unknown')

                            # 检查 name 字段
                            if 'name' in item:
                                name_value = item['name']
                                if isinstance(name_value, str) and name_value.strip():
                                    entries.append((str(yml_path), entity_id, 'name', name_value))

                            # 检查 description 字段
                            if 'description' in item:
                                desc_value = item['description']
                                if isinstance(desc_value, str) and desc_value.strip():
                                    entries.append((str(yml_path), entity_id, 'description', desc_value))

        except Exception as e:
            # 静默处理错误，只在需要时输出
            pass

        return entries

    def scan_yml_directory(self) -> List[Tuple[str, str, str, str]]:
        """扫描所有 Prototypes 目录下的 YAML 文件"""
        all_entries = []

        if not self.prototypes_dir.exists():
            print(f"警告: 目录不存在 {self.prototypes_dir}")
            return all_entries

        for yml_file in self.prototypes_dir.rglob("*.yml"):
            entries = self.parse_yml_file(yml_file)
            all_entries.extend(entries)

        return all_entries

    def get_ftl_key_from_entity(self, entity_id: str, field: str) -> str:
        """根据实体 ID 和字段生成对应的 FTL key"""
        # Space Station 14 的命名约定
        # entity id: ClothingHeadHatBeret -> ent-ClothingHeadHatBeret.name / .desc
        if field == 'name':
            return f"ent-{entity_id}"
        elif field == 'description':
            return f"ent-{entity_id}"
        return ""

    def compare_translations(self):
        """比较翻译差异"""
        print("正在扫描英文 FTL 文件...")
        self.en_ftl_entries = self.scan_ftl_directory(self.en_locale_dir)
        print(f"找到 {len(self.en_ftl_entries)} 个英文翻译条目")

        print("正在扫描中文 FTL 文件...")
        self.zh_ftl_entries = self.scan_ftl_directory(self.zh_locale_dir)
        print(f"找到 {len(self.zh_ftl_entries)} 个中文翻译条目")

        print("正在扫描 YAML 原型文件...")
        self.yml_translatable_entries = self.scan_yml_directory()
        print(f"找到 {len(self.yml_translatable_entries)} 个可翻译条目")

    def generate_report(self, output_csv: str):
        """生成 CSV 报告"""
        print(f"\n正在生成报告到 {output_csv}...")

        # 统计数据
        missing_in_en = []
        missing_in_zh = []
        present_in_both = []

        # 检查 FTL 文件中缺失的条目
        for key in self.en_ftl_entries:
            if key not in self.zh_ftl_entries:
                missing_in_zh.append({
                    'type': 'FTL条目',
                    'key': key,
                    'en_file': self.en_ftl_entries[key],
                    'zh_file': '',
                    'status': '中文缺失'
                })
            else:
                present_in_both.append({
                    'type': 'FTL条目',
                    'key': key,
                    'en_file': self.en_ftl_entries[key],
                    'zh_file': self.zh_ftl_entries[key],
                    'status': '已翻译'
                })

        for key in self.zh_ftl_entries:
            if key not in self.en_ftl_entries:
                missing_in_en.append({
                    'type': 'FTL条目',
                    'key': key,
                    'en_file': '',
                    'zh_file': self.zh_ftl_entries[key],
                    'status': '英文缺失(多余)'
                })

        # 写入 CSV 文件
        with open(output_csv, 'w', newline='', encoding='utf-8-sig') as csvfile:
            fieldnames = ['类型', '键名/实体ID', '字段', '英文文件', '中文文件', '状态', '原文']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

            writer.writeheader()

            # 写入缺失的中文翻译
            for item in missing_in_zh:
                writer.writerow({
                    '类型': item['type'],
                    '键名/实体ID': item['key'],
                    '字段': '',
                    '英文文件': item['en_file'],
                    '中文文件': item['zh_file'],
                    '状态': item['status'],
                    '原文': ''
                })

            # 写入多余的中文翻译
            for item in missing_in_en:
                writer.writerow({
                    '类型': item['type'],
                    '键名/实体ID': item['key'],
                    '字段': '',
                    '英文文件': item['en_file'],
                    '中文文件': item['zh_file'],
                    '状态': item['status'],
                    '原文': ''
                })

        # 打印统计
        print("\n=== 翻译统计 ===")
        print(f"英文 FTL 条目总数: {len(self.en_ftl_entries)}")
        print(f"中文 FTL 条目总数: {len(self.zh_ftl_entries)}")
        print(f"已翻译条目: {len(present_in_both)}")
        print(f"缺失中文翻译: {len(missing_in_zh)}")
        print(f"多余中文翻译(英文中不存在): {len(missing_in_en)}")
        print(f"\nYAML 可翻译条目总数: {len(self.yml_translatable_entries)}")

        print(f"\n报告已保存到: {output_csv}")

    def generate_detailed_report(self, output_csv: str):
        """生成详细的 CSV 报告，包含所有信息"""
        print(f"\n正在生成详细报告到 {output_csv}...")

        with open(output_csv, 'w', newline='', encoding='utf-8-sig') as csvfile:
            fieldnames = ['类型', '键名/实体ID', '字段', 'YAML文件路径', '中文FTL文件路径', '状态', '原文内容']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

            writer.writeheader()

            # 1. FTL 条目比较
            all_ftl_keys = set(self.en_ftl_entries.keys()) | set(self.zh_ftl_entries.keys())
            for key in sorted(all_ftl_keys):
                en_file = self.en_ftl_entries.get(key, '')
                zh_file = self.zh_ftl_entries.get(key, '')

                if key in self.en_ftl_entries and key in self.zh_ftl_entries:
                    status = '已翻译'
                elif key in self.en_ftl_entries:
                    status = '中文缺失'
                else:
                    status = '英文缺失(多余)'

                writer.writerow({
                    '类型': 'FTL条目',
                    '键名/实体ID': key,
                    '字段': '',
                    'YAML文件路径': en_file,
                    '中文FTL文件路径': zh_file,
                    '状态': status,
                    '原文内容': ''
                })

            # 2. YAML 原型条目比较
            yml_missing_count = 0
            yml_translated_count = 0

            for yml_file, entity_id, field, original_text in self.yml_translatable_entries:
                # 根据字段类型生成对应的 FTL key
                if field == 'name':
                    ftl_key = f"ent-{entity_id}"
                elif field == 'description':
                    ftl_key = f"ent-{entity_id}.desc"
                else:
                    continue

                # 检查中文 FTL 中是否存在对应的翻译
                if ftl_key in self.zh_ftl_entries:
                    status = '已翻译'
                    zh_file = self.zh_ftl_entries[ftl_key]
                    yml_translated_count += 1
                else:
                    status = 'YAML硬编码-缺少中文翻译'
                    zh_file = ''
                    yml_missing_count += 1

                writer.writerow({
                    '类型': 'YAML原型',
                    '键名/实体ID': entity_id,
                    '字段': field,
                    'YAML文件路径': yml_file,
                    '中文FTL文件路径': zh_file,
                    '状态': status,
                    '原文内容': original_text[:100] if len(original_text) > 100 else original_text
                })

        # 打印统计
        print("\n=== 详细翻译统计 ===")
        print("\n【FTL 文件对比】")
        en_count = len(self.en_ftl_entries)
        zh_count = len(self.zh_ftl_entries)
        both_count = len(set(self.en_ftl_entries.keys()) & set(self.zh_ftl_entries.keys()))
        missing_zh = len(set(self.en_ftl_entries.keys()) - set(self.zh_ftl_entries.keys()))
        extra_zh = len(set(self.zh_ftl_entries.keys()) - set(self.en_ftl_entries.keys()))

        print(f"  英文 FTL 条目总数: {en_count}")
        print(f"  中文 FTL 条目总数: {zh_count}")
        print(f"  已翻译条目: {both_count}")
        print(f"  缺失中文翻译: {missing_zh}")
        print(f"  多余中文翻译(英文中不存在): {extra_zh}")

        if en_count > 0:
            coverage = (both_count / en_count) * 100
            print(f"  FTL 翻译覆盖率: {coverage:.2f}%")

        print("\n【YAML 原型文件对比】")
        print(f"  YAML 可翻译条目总数: {len(self.yml_translatable_entries)}")
        print(f"  已有中文翻译: {yml_translated_count}")
        print(f"  缺少中文翻译: {yml_missing_count}")

        if len(self.yml_translatable_entries) > 0:
            yml_coverage = (yml_translated_count / len(self.yml_translatable_entries)) * 100
            print(f"  YAML 翻译覆盖率: {yml_coverage:.2f}%")

        print(f"\n详细报告已保存到: {output_csv}")


def main():
    # 获取仓库根目录
    repo_root = "/home/runner/work/space-station-14-zh/space-station-14-zh"

    # 创建比较器
    comparator = TranslationComparator(repo_root)

    # 执行比较
    comparator.compare_translations()

    # 生成详细报告
    output_file = os.path.join(repo_root, "translation_comparison.csv")
    comparator.generate_detailed_report(output_file)

    print("\n完成！")


if __name__ == "__main__":
    main()
