# 检查手持物品时的文字
comp-hands-examine = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } 手持着 { $items }。
comp-hands-examine-empty = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } 两手空空。
comp-hands-examine-wrapper = { INDEFINITE($item) } [color=paleturquoise]{$item}[/color]

hands-system-blocked-by = 被阻挡于
