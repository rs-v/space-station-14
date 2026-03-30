parse-minutes-fail = 无法将"{$minutes}"解析为分钟
parse-session-fail = 未找到"{$username}"的会话

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = 为玩家的总游玩时间增加指定分钟数
cmd-playtime_addoverall-help = 用法：{$command} <用户名> <分钟>
cmd-playtime_addoverall-succeed = 已将{$username}的总游玩时间增加至{TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addoverall-arg-user = <用户名>
cmd-playtime_addoverall-arg-minutes = <分钟>
cmd-playtime_addoverall-error-args = 需要恰好两个参数

# - playtime_addrole
cmd-playtime_addrole-desc = 为玩家的职业游玩时间增加指定分钟数
cmd-playtime_addrole-help = 用法：{$command} <用户名> <职业> <分钟>
cmd-playtime_addrole-succeed = 已将{$username} / \'{$role}\'的职业游玩时间增加至{TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addrole-arg-user = <用户名>
cmd-playtime_addrole-arg-role = <职业>
cmd-playtime_addrole-arg-minutes = <分钟>
cmd-playtime_addrole-error-args = 需要恰好三个参数

# - playtime_getoverall
cmd-playtime_getoverall-desc = 获取玩家的总游玩时间
cmd-playtime_getoverall-help = 用法：{$command} <用户名>
cmd-playtime_getoverall-success = {$username}的总游玩时间为{TOSTRING($time, "dddd\\:hh\\:mm")}。
cmd-playtime_getoverall-arg-user = <用户名>
cmd-playtime_getoverall-error-args = 需要恰好一个参数

# - GetRoleTimer
cmd-playtime_getrole-desc = 获取玩家的全部或指定职业计时器
cmd-playtime_getrole-help = 用法：{$command} <用户名> [职业]
cmd-playtime_getrole-no = 未找到职业计时器
cmd-playtime_getrole-role = 职业：{$role}，游玩时间：{$time}
cmd-playtime_getrole-overall = 总游玩时间为{$time}
cmd-playtime_getrole-succeed = {$username}的游玩时间为：{TOSTRING($time, "dddd\\:hh\\:mm")}。
cmd-playtime_getrole-arg-user = <用户名>
cmd-playtime_getrole-arg-role = <职业|'Overall'>
cmd-playtime_getrole-error-args = 需要一个或两个参数

# - playtime_save
cmd-playtime_save-desc = 将玩家的游玩时间保存到数据库
cmd-playtime_save-help = 用法：{$command} <用户名>
cmd-playtime_save-succeed = 已保存{$username}的游玩时间
cmd-playtime_save-arg-user = <用户名>
cmd-playtime_save-error-args = 需要恰好一个参数

## 'playtime_flush' command'

cmd-playtime_flush-desc = 将活跃追踪器刷入游玩时间追踪存储。
cmd-playtime_flush-help = 用法：{$command} [用户名]
    这仅会刷入内部存储，不会立即刷入数据库。
    若提供了用户名，则只刷新该用户。

cmd-playtime_flush-error-args = 需要零个或一个参数
cmd-playtime_flush-arg-user = [用户名]
