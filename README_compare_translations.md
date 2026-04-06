# 翻译对比工具 (Translation Comparison Tool)

## 简介

这是一个用于比较 Space Station 14 中英文 FTL 翻译文件与中文 FTL 翻译文件，以及 YAML 原型文件中硬编码的英文文本与中文翻译差异的 Python 脚本。

## 功能

- 扫描 `Resources/Locale/en-US/` 目录下的所有英文 FTL 翻译文件
- 扫描 `Resources/Locale/zh-CN/` 目录下的所有中文 FTL 翻译文件
- **扫描 `Resources/Prototypes/` 目录下所有 YAML 文件中的硬编码英文文本**（name 和 description 字段）
- 对比 FTL 文件和 YAML 原型文件的翻译条目差异
- 生成详细的 CSV 报告文件

## 使用方法

### 运行脚本

```bash
python3 compare_translations.py
```

### 输出文件

脚本会在仓库根目录生成 `translation_comparison.csv` 文件。

## CSV 报告格式

CSV 文件包含以下列：

- **类型**: 条目类型
  - `FTL条目`: FTL 文件中的翻译键
  - `YAML原型`: YAML 原型文件中硬编码的文本
- **键名/实体ID**:
  - 对于 FTL 条目：FTL 文件中的键名
  - 对于 YAML 原型：实体的 ID
- **字段**:
  - 对于 FTL 条目为空
  - 对于 YAML 原型：`name` 或 `description`
- **YAML文件路径**:
  - 对于 FTL 条目：英文 FTL 文件路径
  - 对于 YAML 原型：YAML 文件路径
- **中文FTL文件路径**: 对应的中文 FTL 翻译文件路径
- **状态**: 翻译状态
  - `已翻译`: 存在对应的中文翻译
  - `中文缺失`: FTL 条目中英文存在但中文缺失
  - `英文缺失(多余)`: 中文存在但英文不存在的 FTL 条目
  - `YAML硬编码-缺少中文翻译`: YAML 文件中硬编码的英文文本缺少对应的中文翻译
- **原文内容**: YAML 原型中的原文文本（截断至 100 字符）

## 统计示例

运行脚本后会输出统计信息，例如：

```
=== 详细翻译统计 ===

【FTL 文件对比】
  英文 FTL 条目总数: 26775
  中文 FTL 条目总数: 33875
  已翻译条目: 26775
  缺失中文翻译: 0
  多余中文翻译(英文中不存在): 7100
  FTL 翻译覆盖率: 100.00%

【YAML 原型文件对比】
  YAML 可翻译条目总数: 12660
  已有中文翻译: 6527
  缺少中文翻译: 6133
  YAML 翻译覆盖率: 51.56%
```

## 依赖项

脚本需要以下 Python 库：

- `pyyaml`: 用于解析 YAML 文件

安装依赖：

```bash
pip install pyyaml
```

## 注意事项

1. 脚本会自动处理 YAML 文件中的自定义标签（如 `!type:`）
2. 脚本会静默忽略无法解析的 YAML 文件
3. CSV 文件使用 UTF-8-BOM 编码，可以在 Excel 中正确显示中文
4. YAML 原型翻译检查基于 Space Station 14 的命名约定：
   - Entity name: `ent-{EntityID}`
   - Entity description: `ent-{EntityID}.desc`

## 文件结构

```
space-station-14-zh/
├── compare_translations.py          # 主脚本
├── translation_comparison.csv       # 生成的报告文件
├── Resources/
│   ├── Locale/
│   │   ├── en-US/                  # 英文翻译文件
│   │   └── zh-CN/                  # 中文翻译文件
│   └── Prototypes/                 # 游戏原型文件（YAML）
└── README_compare_translations.md   # 本文档
```

## 工作原理

### FTL 文件比较
脚本扫描所有 FTL 文件中的翻译键（格式为 `key = value`），并比较英文和中文版本。

### YAML 原型文件处理
1. 脚本扫描 `Resources/Prototypes/` 下所有 `.yml` 文件
2. 查找类型为 `entity` 的条目
3. 提取每个实体的 `name` 和 `description` 字段
4. 根据命名约定生成对应的 FTL 键名
5. 检查中文 FTL 文件中是否存在对应的翻译

### 示例
如果 YAML 文件中有：
```yaml
- type: entity
  id: ClothingHeadHatBeret
  name: beret
  description: An artist's favorite headwear.
```

脚本会检查中文 FTL 文件中是否存在：
- `ent-ClothingHeadHatBeret` (对应 name)
- `ent-ClothingHeadHatBeret.desc` (对应 description)

## 改进建议

未来可能的改进方向：

1. ✅ 添加对 YAML 原型文件中 `name` 和 `description` 字段的翻译检查
2. 在 CSV 中包含实际的译文内容
3. 添加翻译质量检查（如空翻译、过长/过短翻译等）
4. 生成 HTML 格式的可视化报告
5. 支持增量比较（只检查最近修改的文件）
6. 添加对其他可翻译字段的支持（如 suffix 等）

## 许可证

本脚本遵循与 Space Station 14 项目相同的许可证。
