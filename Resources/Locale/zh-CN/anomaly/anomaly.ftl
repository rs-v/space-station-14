anomaly-component-contact-damage = 异常现象灼烧了你的皮肤！

anomaly-vessel-component-anomaly-assigned = 异常现象已分配至容器。
anomaly-vessel-component-not-assigned = 此容器未分配任何异常现象。请尝试用扫描仪扫描它。
anomaly-vessel-component-assigned = 此容器当前已分配了一个异常现象。

anomaly-particles-delta = Delta粒子
anomaly-particles-epsilon = Epsilon粒子
anomaly-particles-zeta = Zeta粒子
anomaly-particles-omega = Omega粒子
anomaly-particles-sigma = Sigma粒子

anomaly-scanner-component-scan-complete = 扫描完成！

anomaly-scanner-ui-title = 异常扫描仪
anomaly-scanner-no-anomaly = 当前未扫描到异常现象。
anomaly-scanner-severity-percentage = 当前严重程度：[color=gray]{$percent}[/color]
anomaly-scanner-severity-percentage-unknown = 当前严重程度：[color=red]错误[/color]
anomaly-scanner-stability-low = 当前异常状态：[color=gold]衰减中[/color]
anomaly-scanner-stability-medium = 当前异常状态：[color=forestgreen]稳定[/color]
anomaly-scanner-stability-high = 当前异常状态：[color=crimson]增长中[/color]
anomaly-scanner-stability-unknown = 当前异常状态：[color=red]错误[/color]
anomaly-scanner-point-output = 积分产出：[color=gray]{$point}[/color]
anomaly-scanner-point-output-unknown = 积分产出：[color=red]错误[/color]
anomaly-scanner-particle-readout = 粒子反应分析：
anomaly-scanner-particle-danger = - [color=crimson]危险类型：[/color]{$type}
anomaly-scanner-particle-unstable = - [color=plum]不稳定类型：[/color]{$type}
anomaly-scanner-particle-containment = - [color=goldenrod]抑制类型：[/color]{$type}
anomaly-scanner-particle-transformation = - [color=#6b75fa]转化类型：[/color]{$type}
anomaly-scanner-particle-danger-unknown = - [color=crimson]危险类型：[/color][color=red]错误[/color]
anomaly-scanner-particle-unstable-unknown = - [color=plum]不稳定类型：[/color][color=red]错误[/color]
anomaly-scanner-particle-containment-unknown = - [color=goldenrod]抑制类型：[/color][color=red]错误[/color]
anomaly-scanner-particle-transformation-unknown = - [color=#6b75fa]转化类型：[/color][color=red]错误[/color]
anomaly-scanner-pulse-timer = 距下次脉冲时间：[color=gray]{$time}[/color]

anomaly-gorilla-core-slot-name = 异常核心
anomaly-gorilla-charge-none = 其中没有[bold]异常核心[/bold]。
anomaly-gorilla-charge-limit = 剩余[color={$count ->
    [3]green
    [2]yellow
    [1]orange
    [0]red
    *[other]purple
}]{$count}次[/color]充能。
anomaly-gorilla-charge-infinite = 拥有[color=gold]无限充能[/color]。[italic]目前如此……[/italic]

anomaly-sync-connected = 异常现象连接成功
anomaly-sync-disconnected = 与异常现象的连接已断开！
anomaly-sync-no-anomaly = 范围内无异常现象。
anomaly-sync-examine-connected = 已[color=darkgreen]连接[/color]到一个异常现象。
anomaly-sync-examine-not-connected = [color=darkred]未连接[/color]任何异常现象。
anomaly-sync-connect-verb-text = 连接异常
anomaly-sync-connect-verb-message = 将附近的异常现象连接到{THE($machine)}。
anomaly-sync-disconnect-verb-text = 断开异常
anomaly-sync-disconnect-verb-message = 将已连接的异常现象从{THE($machine)}断开。

anomaly-generator-ui-title = 异常生成器
anomaly-generator-fuel-display = 燃料：
anomaly-generator-cooldown = 冷却时间：[color=gray]{$time}[/color]
anomaly-generator-no-cooldown = 冷却时间：[color=gray]已完成[/color]
anomaly-generator-yes-fire = 状态：[color=forestgreen]就绪[/color]
anomaly-generator-no-fire = 状态：[color=crimson]未就绪[/color]
anomaly-generator-generate = 生成异常
anomaly-generator-charges = {$charges ->
    [one] {$charges}次充能
    *[other] {$charges}次充能
}
anomaly-generator-announcement = 一个异常现象已生成！

anomaly-command-pulse = 对目标异常现象施加脉冲
anomaly-command-supercritical = 使目标异常现象超临界

# 底部装饰文字
anomaly-generator-flavor-left = 异常可能在操作员体内生成。
anomaly-generator-flavor-right = v1.1

anomaly-behavior-unknown = [color=red]错误，无法读取。[/color]

anomaly-behavior-title = 行为偏差分析：
anomaly-behavior-point = [color=gold]异常产出积分的 {$mod}%[/color]

anomaly-behavior-safe = [color=forestgreen]异常极度稳定，脉冲极为罕见。[/color]
anomaly-behavior-slow = [color=forestgreen]脉冲频率大幅降低。[/color]
anomaly-behavior-light = [color=forestgreen]脉冲强度显著减弱。[/color]
anomaly-behavior-balanced = 未检测到行为偏差。
anomaly-behavior-delayed-force = 脉冲频率大幅降低，但强度有所增加。
anomaly-behavior-rapid = 脉冲频率大幅提高，但强度有所减弱。
anomaly-behavior-reflect = 检测到保护层。
anomaly-behavior-nonsensivity = 检测到对粒子的微弱反应。
anomaly-behavior-sensivity = 检测到对粒子的增强反应。
anomaly-behavior-invisibility = 检测到光波扭曲。
anomaly-behavior-secret = 检测到干扰，部分数据无法读取。
anomaly-behavior-inconstancy = [color=crimson]检测到不稳定性，粒子类型可能随时间变化。[/color]
anomaly-behavior-fast = [color=crimson]脉冲频率大幅增加。[/color]
anomaly-behavior-strenght = [color=crimson]脉冲强度显著增加。[/color]
anomaly-behavior-moving = [color=crimson]检测到坐标不稳定。[/color]
anomaly-secret-admin = [color=red](错误)[/color]
