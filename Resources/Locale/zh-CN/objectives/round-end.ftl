objectives-round-end-result = {$count ->
    [one] 有一位{$agent}。
    *[other] 有{$count}位{MAKEPLURAL($agent)}。
}

objectives-round-end-result-in-custody = {$count}位{MAKEPLURAL($agent)}中有{$custody}位被拘留。

objectives-player-user-named = [color=White]{$name}[/color]（[color=gray]{$user}[/color]）
objectives-player-named = [color=White]{$name}[/color]

objectives-no-objectives = {$custody}{$title}是一位{$agent}。
objectives-with-objectives = {$custody}{$title}是一位{$agent}，其目标如下：

objectives-objective-success = {$objective} | [color=green]成功！[/color]（{TOSTRING($progress, "P0")}）
objectives-objective-partial-success = {$objective} | [color=yellow]部分成功！[/color]（{TOSTRING($progress, "P0")}）
objectives-objective-partial-failure = {$objective} | [color=orange]部分失败！[/color]（{TOSTRING($progress, "P0")}）
objectives-objective-fail = {$objective} | [color=red]失败！[/color]（{TOSTRING($progress, "P0")}）

objectives-in-custody = [bold][color=red]| 已拘留 | [/color][/bold]
