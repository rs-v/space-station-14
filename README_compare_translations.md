# 翻译对比工具 (Translation Comparison Tool)

## 简介

这是一个用于比较 Space Station 14 中英文 FTL 翻译文件与中文 FTL 翻译文件差异的 Python 脚本。

## 功能

- 扫描 `Resources/Locale/en-US/` 目录下的所有英文 FTL 翻译文件
- 扫描 `Resources/Locale/zh-CN/` 目录下的所有中文 FTL 翻译文件
- 对比两者的翻译条目差异
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

- **类型**: 条目类型（目前为 "FTL条目"）
- **键名/实体ID**: FTL 文件中的键名
- **字段**: 字段类型（对于 FTL 条目为空）
- **英文文件路径**: 包含该键的英文 FTL 文件路径
- **中文文件路径**: 包含该键的中文 FTL 文件路径
- **状态**: 翻译状态
  - `已翻译`: 英文和中文都存在该条目
  - `中文缺失`: 英文存在但中文缺失的条目
  - `英文缺失(多余)`: 中文存在但英文不存在的条目
- **原文内容**: 原文内容（当前版本暂未实现）

## 统计示例

运行脚本后会输出统计信息，例如：

```
=== 详细翻译统计 ===
英文 FTL 条目总数: 26775
中文 FTL 条目总数: 33875
已翻译条目: 26775
缺失中文翻译: 0
多余中文翻译(英文中不存在): 7100
翻译覆盖率: 100.00%
```

## 依赖项

脚本需要以下 Python 库：

- `pyyaml`: 用于解析 YAML 文件

安装依赖：

```bash
pip install pyyaml
```

## 注意事项

1. 脚本会忽略无法解析的 YAML 文件（例如包含自定义 YAML 标签的文件）
2. 脚本会输出警告信息，但不会中断执行
3. CSV 文件使用 UTF-8-BOM 编码，可以在 Excel 中正确显示中文

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

## 改进建议

未来可能的改进方向：

1. 添加对 YAML 原型文件中 `name` 和 `description` 字段的翻译检查
2. 在 CSV 中包含实际的原文和译文内容
3. 添加翻译质量检查（如空翻译、过长/过短翻译等）
4. 生成 HTML 格式的可视化报告
5. 支持增量比较（只检查最近修改的文件）

## 许可证

本脚本遵循与 Space Station 14 项目相同的许可证。
