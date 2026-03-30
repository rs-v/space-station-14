## 革命领袖

roles-antag-rev-head-name = 革命领袖
roles-antag-rev-head-objective = 你的目标是通过转化他人加入你的阵营并消灭所有指挥部成员来夺取空间站的控制权。

head-rev-role-greeting =
    你是一名革命领袖。你的任务是通过击毙、拘押或转化的方式将所有指挥部成员赶下台。
    辛迪加为你提供了一个能将他人转化为同志的闪光灯。注意，这对佩戴护眼装备或植入心盾芯片的人无效。请记住，指挥部和安保人员在入职时已被植入心盾芯片。
    革命万岁！

head-rev-briefing =
    使用闪光灯将人们转化为你的同志。
    击毙、拘押或转化所有指挥部成员，以夺取空间站的控制权。

head-rev-break-mindshield = 心盾芯片被摧毁了！

## 革命者

roles-antag-rev-name = 革命者
roles-antag-rev-objective = 你的目标是确保革命领袖的安全并服从其命令，通过消灭所有指挥部成员帮助他们夺取空间站的控制权。

rev-break-control = {$name} 想起了自己真正的效忠对象！

rev-role-greeting =
    你是一名革命者。你的任务是保护革命领袖并协助他们夺取空间站的控制权。
    革命必须团结一致，击毙、拘押或转化所有指挥部成员。
    革命万岁！

rev-briefing = 协助革命领袖击毙、拘押或转化所有指挥部成员，以夺取空间站的控制权。

## 综合

rev-title = 革命者
rev-description = 潜伏在船员中的革命者正试图转化他人加入其阵营，推翻指挥部。

rev-not-enough-ready-players = 游戏准备就绪的玩家不足。当前准备就绪的玩家有 {$readyPlayersCount} 人，但需要至少 {$minimumPlayers} 人。无法启动革命者模式。
rev-no-one-ready = 没有玩家准备就绪！无法启动革命者模式。
rev-no-heads = 没有可供选择的革命领袖。无法启动革命者模式。

rev-won = 革命领袖存活下来，成功夺取了空间站的控制权。

rev-lost = 所有革命领袖已阵亡，指挥部得以存活。

rev-stalemate = 指挥部和革命领袖全部阵亡。平局。

rev-reverse-stalemate = 指挥部和革命领袖均存活下来。

rev-headrev-count = {$initialCount ->
    [one] 共有一名革命领袖：
    *[other] 共有 {$initialCount} 名革命领袖：
}

rev-headrev-name-user = [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) 转化了 {$count} {$count ->
    [one] 人
    *[other] 人
}

rev-headrev-name = [color=#5e9cff]{$name}[/color] 转化了 {$count} {$count ->
    [one] 人
    *[other] 人
}

## 去转化窗口

rev-deconverted-title = 已去转化！
rev-deconverted-text =
    随着最后一名革命领袖的阵亡，革命已经结束。

    你不再是革命者了，请好好表现。
rev-deconverted-confirm = 确认
