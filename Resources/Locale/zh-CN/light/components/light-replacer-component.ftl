### 交互消息

# 玩家尝试更换灯泡但没有灯泡剩余时显示
comp-light-replacer-missing-light = {THE($light-replacer)}中没有灯泡了。

# 玩家将灯泡插入灯泡替换器时显示
comp-light-replacer-insert-light = 你将{$bulb}插入了{THE($light-replacer)}。

# 玩家尝试将破损灯泡插入灯泡替换器时显示
comp-light-replacer-insert-broken-light = 你不能插入破损的灯泡！

# 玩家从灯箱补充灯泡时显示
comp-light-replacer-refill-from-storage = 你补充了{THE($light-replacer)}。

### 检查

comp-light-replacer-no-lights = 它是空的。
comp-light-replacer-has-lights = 它包含以下内容：
comp-light-replacer-light-listing = {$amount ->
    [one] [color=yellow]{$amount}[/color] [color=gray]{$name}[/color]
    *[other] [color=yellow]{$amount}[/color] [color=gray]{$name}s[/color]
}
