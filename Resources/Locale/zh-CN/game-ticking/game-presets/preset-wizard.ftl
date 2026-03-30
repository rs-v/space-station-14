## 幸存者

roles-antag-survivor-name = 幸存者
# 这是光环系列的梗
roles-antag-survivor-objective = 当前目标：生存

survivor-role-greeting =
    你是一名幸存者。你最重要的任务是活着回到中央指挥部。
    收集足够的火力以确保你的生存。
    不要相信任何人。

survivor-round-end-dead-count =
{
    $deadCount ->
        [one] [color=red]{$deadCount}[/color] 名幸存者阵亡。
        *[other] [color=red]{$deadCount}[/color] 名幸存者阵亡。
}

survivor-round-end-alive-count =
{
    $aliveCount ->
        [one] [color=yellow]{$aliveCount}[/color] 名幸存者被困在了空间站上。
        *[other] [color=yellow]{$aliveCount}[/color] 名幸存者被困在了空间站上。
}

survivor-round-end-alive-on-shuttle-count =
{
    $aliveCount ->
        [one] [color=green]{$aliveCount}[/color] 名幸存者成功逃出生天。
        *[other] [color=green]{$aliveCount}[/color] 名幸存者成功逃出生天。
}

## 法师

objective-issuer-swf = [color=turquoise]太空巫师联合会[/color]

wizard-title = 法师
wizard-description = 空间站上出现了一名法师！谁也不知道他会做什么。

roles-antag-wizard-name = 法师
roles-antag-wizard-objective = 给他们一个永生难忘的教训。

wizard-role-greeting =
    法师时间到，火球！
    太空巫师联合会与纳米传森之间的关系日趋紧张。你被太空巫师联合会选中，前往空间站"提醒他们"为何施法者不可轻易招惹。
    制造混乱和破坏！你的行动由你决定，但请记住，太空巫师希望你能活着离开。

wizard-round-end-name = 法师

## TODO：法师学徒（将在法师发布后某个时间推出）
