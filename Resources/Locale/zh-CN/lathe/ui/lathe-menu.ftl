lathe-menu-title = 车床菜单
lathe-menu-queue = 队列
lathe-menu-server-list = 服务器列表
lathe-menu-sync = 同步
lathe-menu-search-designs = 搜索设计
lathe-menu-category-all = 全部
lathe-menu-search-filter = 筛选：
lathe-menu-amount = 数量：
lathe-menu-recipe-count = { $count ->
    [1] {$count}个配方
    *[other] {$count}个配方
}
lathe-menu-reagent-slot-examine = 它侧面有一个烧杯槽。
lathe-reagent-dispense-no-container = 液体从{THE($name)}中流出，洒落在地板上！
lathe-menu-result-reagent-display = {$reagent}（{$amount}u）
lathe-menu-material-display = {$material}（{$amount}）
lathe-menu-tooltip-display = {$material}：{$amount}
lathe-menu-description-display = [italic]{$description}[/italic]
lathe-menu-material-amount = { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit}
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)}
}
lathe-menu-material-amount-missing = { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit}的{$material}（[color=red]缺少{NATURALFIXED($missingAmount, 2)} {$unit}[/color]）
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)}的{$material}（[color=red]缺少{NATURALFIXED($missingAmount, 2)} {MAKEPLURAL($unit)}[/color]）
}
lathe-menu-no-materials-message = 未装载材料。
lathe-menu-silo-linked-message = 已连接储料仓
lathe-menu-fabricating-message = 正在制造...
lathe-menu-materials-title = 材料
lathe-menu-queue-title = 建造队列
lathe-menu-delete-fabricating-tooltip = 取消当前正在打印的项目。
lathe-menu-delete-item-tooltip = 取消打印此批次。
lathe-menu-move-up-tooltip = 将此批次在队列中前移。
lathe-menu-move-down-tooltip = 将此批次在队列中后移。
lathe-menu-item-single = {$index}. {$name}
lathe-menu-item-batch = {$index}. {$name}（{$printed}/{$total}）
