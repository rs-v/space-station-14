defusable-examine-defused = {CAPITALIZE(THE($name))}已被[color=lime]拆除[/color]。
defusable-examine-live = {CAPITALIZE(THE($name))}正在[color=red]计时[/color]，还剩[color=red]{$time}[/color]秒。
defusable-examine-live-display-off = {CAPITALIZE(THE($name))}正在[color=red]计时[/color]，但计时器显示似乎已关闭。
defusable-examine-inactive = {CAPITALIZE(THE($name))}处于[color=lime]未激活[/color]状态，但仍可被引爆。
defusable-examine-bolts = 螺栓处于{$down ->
    [true] [color=red]锁定[/color]
    *[false] [color=green]解锁[/color]
}状态。
