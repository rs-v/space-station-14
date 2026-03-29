ore-silo-ui-title = 材料仓库
ore-silo-ui-label-clients = 机器
ore-silo-ui-label-mats = 材料
ore-silo-ui-itemlist-entry = {$linked ->
    [true] {"[已连接] "}
    *[False] {""}
} {$name} ({$beacon}) {$inRange ->
    [true] {""}
    *[false] (超出范围)
}
