#!/bin/bash
# 快速运行脚本的辅助脚本

echo "正在运行翻译对比工具..."
python3 compare_translations.py

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ 成功生成报告！"
    echo "报告文件: translation_comparison.csv"
    echo ""
    echo "你可以使用以下命令查看报告："
    echo "  - 查看前20行: head -20 translation_comparison.csv"
    echo "  - 查看后20行: tail -20 translation_comparison.csv"
    echo "  - 搜索缺失翻译: grep '中文缺失' translation_comparison.csv"
    echo "  - 搜索多余翻译: grep '英文缺失' translation_comparison.csv"
    echo "  - 用 Excel/LibreOffice 打开查看完整报告"
else
    echo ""
    echo "✗ 运行失败，请检查错误信息"
fi
