analysis-console-menu-title = 宽谱三型分析控制台
analysis-console-server-list-button = 服务器
analysis-console-extract-button = 提取积分

analysis-console-info-no-scanner = 未连接分析仪！请使用多功能工具连接一个。
analysis-console-info-no-artifact = 没有神器！请将一个放在平台上以查看节点信息。
analysis-console-info-ready = 系统运行中。准备扫描。

analysis-console-no-node = 选择节点以查看
analysis-console-info-id = [font="Monospace" size=11]ID：[/font]
analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{$id}[/color][/font]
analysis-console-info-class = [font="Monospace" size=11]类型：[/font]
analysis-console-info-class-value = [font="Monospace" size=11]{$class}[/font]
analysis-console-info-locked = [font="Monospace" size=11]状态：[/font]
analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
    [0] red]已锁定
    [1] lime]已解锁
    *[2] plum]活跃中
}[/color][/font]
analysis-console-info-durability = [font="Monospace" size=11]耐久度：[/font]
analysis-console-info-durability-value = [font="Monospace" size=11][color={$color}]{$current}/{$max}[/color][/font]
analysis-console-info-effect = [font="Monospace" size=11]效果：[/font]
analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
    [true] {$info}
    *[false] 解锁节点以获取信息
}[/color][/font]
analysis-console-info-trigger = [font="Monospace" size=11]触发器：[/font]
analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{$triggers}[/color][/font]
analysis-console-info-scanner = 正在扫描...
analysis-console-info-scanner-paused = 已暂停。
analysis-console-progress-text = {$seconds ->
    [one] T-{$seconds}秒
    *[other] T-{$seconds}秒
}

analysis-console-extract-value = [font="Monospace" size=11][color=orange]节点 {$id}（+{$value}）[/color][/font]
analysis-console-extract-none = [font="Monospace" size=11][color=orange] 没有已解锁的节点有剩余积分可提取 [/color][/font]
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]总研究积分：{$value}[/color][/font]

analyzer-artifact-extract-popup = 神器表面闪烁着能量！
