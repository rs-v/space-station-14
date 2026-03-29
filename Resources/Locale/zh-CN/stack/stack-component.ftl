### UI

# 近距离检查堆叠物时显示
comp-stack-examine-detail-count = {$count ->
    [one] 堆叠中有 [color={$markupCountColor}]{$count}[/color] 个物品
    *[other] 堆叠中有 [color={$markupCountColor}]{$count}[/color] 个物品
}。

# 堆叠状态控件
comp-stack-status = 数量：[color=white]{$count}[/color]

### 交互消息

# 尝试向已满堆叠添加时显示
comp-stack-already-full = 堆叠已满。

# 堆叠变满时显示
comp-stack-becomes-full = 堆叠现已满。

# 与分割堆叠相关的文本
comp-stack-split = 你分割了堆叠。
comp-stack-split-halve = 减半
comp-stack-split-too-small = 堆叠太小，无法分割。
