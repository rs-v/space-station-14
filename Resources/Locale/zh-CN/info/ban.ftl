# ban
cmd-ban-desc = 封禁某人
cmd-ban-help = 用法：ban <名称或用户ID> <原因> [时长（分钟），留空或0表示永久封禁]
cmd-ban-player = 无法找到该名称的玩家。
cmd-ban-invalid-minutes = {$minutes}不是有效的分钟数！
cmd-ban-invalid-severity = {$severity}不是有效的严重程度！
cmd-ban-invalid-arguments = 参数数量无效
cmd-ban-hint = <名称/用户ID>
cmd-ban-hint-reason = <原因>
cmd-ban-hint-duration = [时长]
cmd-ban-hint-severity = [严重程度]

cmd-ban-hint-duration-1 = 永久
cmd-ban-hint-duration-2 = 1天
cmd-ban-hint-duration-3 = 3天
cmd-ban-hint-duration-4 = 1周
cmd-ban-hint-duration-5 = 2周
cmd-ban-hint-duration-6 = 1个月

# ban panel
cmd-banpanel-desc = 打开封禁面板
cmd-banpanel-help = 用法：banpanel [名称或用户GUID]
cmd-banpanel-server = 无法从服务器控制台使用此命令
cmd-banpanel-player-err = 找不到指定的玩家

# listbans
cmd-banlist-desc = 列出用户的活跃封禁。
cmd-banlist-help = 用法：banlist <名称或用户ID>
cmd-banlist-empty = 未找到{$user}的活跃封禁
cmd-banlist-hint = <名称/用户ID>

cmd-ban_exemption_update-desc = 为玩家设置某类封禁的豁免。
cmd-ban_exemption_update-help = 用法：ban_exemption_update <玩家> <标志> [<标志> [...]]
    指定多个标志以给予玩家多个封禁豁免标志。
    要删除所有豁免，运行此命令并仅给出"None"作为标志。

cmd-ban_exemption_update-nargs = 至少需要2个参数
cmd-ban_exemption_update-locate = 无法找到玩家"{$player}"。
cmd-ban_exemption_update-invalid-flag = 无效标志"{$flag}"。
cmd-ban_exemption_update-success = 已更新"{$player}"（{$uid}）的封禁豁免标志。
cmd-ban_exemption_update-arg-player = <玩家>
cmd-ban_exemption_update-arg-flag = <标志>

cmd-ban_exemption_get-desc = 显示某个玩家的封禁豁免。
cmd-ban_exemption_get-help = 用法：ban_exemption_get <玩家>

cmd-ban_exemption_get-nargs = 需要恰好1个参数
cmd-ban_exemption_get-none = 该用户不豁免于任何封禁。
cmd-ban_exemption_get-show = 该用户豁免于以下封禁标志：{$flags}。
cmd-ban_exemption_get-arg-player = <玩家>

# Ban panel
ban-panel-title = 封禁面板
ban-panel-player = 玩家
ban-panel-ip = IP地址
ban-panel-hwid = 硬件ID
ban-panel-reason = 原因
ban-panel-last-conn = 使用上次连接的IP和硬件ID？
ban-panel-submit = 封禁
ban-panel-confirm = 你确定吗？
ban-panel-tabs-basic = 基本信息
ban-panel-tabs-reason = 原因
ban-panel-tabs-players = 玩家列表
ban-panel-tabs-role = 职位封禁信息
ban-panel-no-data = 你必须提供用户、IP或硬件ID才能封禁
ban-panel-invalid-ip = 无法解析IP地址，请重试
ban-panel-select = 选择类型
ban-panel-server = 服务器封禁
ban-panel-role = 职位封禁
ban-panel-minutes = 分钟
ban-panel-hours = 小时
ban-panel-days = 天
ban-panel-weeks = 周
ban-panel-months = 月
ban-panel-years = 年
ban-panel-permanent = 永久
ban-panel-ip-hwid-tooltip = 留空并勾选下方复选框以使用上次连接的详细信息
ban-panel-severity = 严重程度：
ban-panel-erase = 从本轮中删除聊天记录和玩家
ban-panel-expiry-error = 错误

# Ban string
server-ban-string = {$admin}创建了一个严重程度为{$severity}、到期时间为{$expires}的服务器封禁，对象为[{$name}, {$ip}, {$hwid}]，原因：{$reason}
server-ban-string-no-pii = {$admin}创建了一个严重程度为{$severity}、到期时间为{$expires}的服务器封禁，对象为{$name}，原因：{$reason}
server-ban-string-never = 永不

# Kick on ban
ban-kick-reason = 你已被封禁
