## UI

cargo-console-menu-title = 货运申请终端
cargo-console-menu-flavor-left = 订购比平时更多的披萨盒！
cargo-console-menu-flavor-right = v2.1
cargo-console-menu-account-name-label = 账户：{" "}
cargo-console-menu-account-name-none-text = 无
cargo-console-menu-account-name-format = [bold][color={$color}]{$name}[/color][/bold] [font="Monospace"]\[{$code}\][/font]
cargo-console-menu-shuttle-name-label = 穿梭机名称：{" "}
cargo-console-menu-shuttle-name-none-text = 无
cargo-console-menu-points-label = 余额：{" "}
cargo-console-menu-points-amount = ${$amount}
cargo-console-menu-shuttle-status-label = 穿梭机状态：{" "}
cargo-console-menu-shuttle-status-away-text = 外出中
cargo-console-menu-order-capacity-label = 订单容量：{" "}
cargo-console-menu-call-shuttle-button = 激活传送台
cargo-console-menu-permissions-button = 权限
cargo-console-menu-categories-label = 分类：{" "}
cargo-console-menu-search-bar-placeholder = 搜索
cargo-console-menu-requests-label = 请求
cargo-console-menu-orders-label = 订单
cargo-console-menu-populate-categories-all-text = 全部
cargo-console-menu-order-row-title = {$productName}（x{$orderAmount} 共 {$orderPrice}$）
cargo-console-menu-populate-orders-cargo-order-row-product-name-text = 申请人：来自[color={$accountColor}]{$account}[/color]的{$orderRequester}
cargo-console-menu-order-row-product-description = 理由：{$orderReason}
cargo-console-menu-order-row-button-approve = 批准
cargo-console-menu-order-row-button-cancel = 取消
cargo-console-menu-order-row-alerts-reason-absent = 未指定理由
cargo-console-menu-order-row-alerts-requester-unknown = 未知
cargo-console-menu-tab-title-orders = 订单
cargo-console-menu-tab-title-funds = 转账
cargo-console-menu-account-action-transfer-limit = [bold]转账限额：[/bold] ${$limit}
cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold]（无限制）[/color]
cargo-console-menu-account-action-select = [bold]账户操作：[/bold]
cargo-console-menu-account-action-amount = [bold]金额：[/bold] $
cargo-console-menu-account-action-button = 转账
cargo-console-menu-toggle-account-lock-button = 切换转账限额
cargo-console-menu-account-action-option-withdraw = 提取现金
cargo-console-menu-account-action-option-transfer = 转账至 {$code}

# Orders
cargo-console-order-not-allowed = 访问被拒绝
cargo-console-station-not-found = 未找到可用站点
cargo-console-invalid-product = 无效的产品ID
cargo-console-too-many = 已批准订单过多
cargo-console-snip-snip = 订单已截减至容量上限
cargo-console-insufficient-funds = 余额不足（需要 {$cost}）
cargo-console-unfulfilled = 没有空间来履行订单
cargo-console-trade-station = 已发送至 {$destination}
cargo-console-unlock-approved-order-broadcast = [bold]{$productName} x{$orderAmount}[/bold]，花费[bold]{$cost}[/bold]，已由[bold]{$approver}[/bold]批准
cargo-console-fund-withdraw-broadcast = [bold]{$name} 从 {$name1} \[{$code1}\] 提取了 {$amount} 太空币
cargo-console-fund-transfer-broadcast = [bold]{$name} 将 {$amount} 太空币从 {$name1} \[{$code1}\] 转账至 {$name2} \[{$code2}\][/bold]
cargo-console-fund-transfer-user-unknown = 未知

cargo-console-paper-reason-default = 无
cargo-console-paper-approver-default = 本人
cargo-console-paper-print-name = 订单 #{$orderNumber}
cargo-console-paper-print-text = [head=2]订单 #{$orderNumber}[/head]
    {"[bold]物品：[/bold]"} {$itemName}（x{$orderQuantity}）
    {"[bold]申请人：[/bold]"} {$requester}

    {"[head=3]订单信息[/head]"}
    {"[bold]付款方[/bold]："} {$account} [font="Monospace"]\[{$accountcode}\][/font]
    {"[bold]批准人：[/bold]"} {$approver}
    {"[bold]理由：[/bold]"} {$reason}

# Cargo shuttle console
cargo-shuttle-console-menu-title = 货运穿梭机控制台
cargo-shuttle-console-station-unknown = 未知
cargo-shuttle-console-shuttle-not-found = 未找到
cargo-shuttle-console-organics = 在穿梭机上检测到有机生命体
cargo-no-shuttle = 未找到货运穿梭机！

# Funding allocation console
cargo-funding-alloc-console-menu-title = 资金分配控制台
cargo-funding-alloc-console-label-account = [bold]账户[/bold]
cargo-funding-alloc-console-label-code = [bold] 代码 [/bold]
cargo-funding-alloc-console-label-balance = [bold] 余额 [/bold]
cargo-funding-alloc-console-label-cut = [bold] 收益分成 (%) [/bold]

cargo-funding-alloc-console-label-primary-cut = 货运部门从非保险箱来源获得的资金分成（%）：
cargo-funding-alloc-console-label-lockbox-cut = 货运部门从保险箱销售获得的资金分成（%）：

cargo-funding-alloc-console-label-help-non-adjustible = 货运部门从非保险箱销售利润中获得 {$percent}%，其余按下方指定比例分配：
cargo-funding-alloc-console-label-help-adjustible = 非保险箱来源的剩余资金按下方指定比例分配：
cargo-funding-alloc-console-button-save = 保存更改
cargo-funding-alloc-console-label-save-fail = [bold]收益分成无效！[/bold] [color=red]({$pos ->
    [1] +
    *[-1] -
}{$val}%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]资产详情[/head]
    {"[bold]产品：[/bold]"} {$product}
    {"[bold]描述：[/bold]"} {$description}
    {"[bold]单价：[/bold"}] ${$unit}
    {"[bold]数量：[/bold]"} {$amount}
    {"[bold]总价：[/bold]"} ${$cost}

    {"[head=3]采购详情[/head]"}
    {"[bold]订购人：[/bold]"} {$orderer}
    {"[bold]理由：[/bold]"} {$reason}
