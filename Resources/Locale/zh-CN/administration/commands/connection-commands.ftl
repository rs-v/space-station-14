## "grant_connect_bypass"命令的字符串。

cmd-grant_connect_bypass-desc = 临时允许用户绕过常规连接检查。
cmd-grant_connect_bypass-help = 用法：grant_connect_bypass <用户> [时长（分钟）]
    临时授予用户绕过常规连接限制的能力。
    该绕过仅适用于此游戏服务器，默认1小时后过期。
    他们将能够不受白名单、恐慌掩体或玩家上限的限制加入。

cmd-grant_connect_bypass-arg-user = <用户>
cmd-grant_connect_bypass-arg-duration = [时长（分钟）]

cmd-grant_connect_bypass-invalid-args = 预期1或2个参数
cmd-grant_connect_bypass-unknown-user = 无法找到用户'{$user}'
cmd-grant_connect_bypass-invalid-duration = 无效的时长'{$duration}'

cmd-grant_connect_bypass-success = 已成功为用户'{$user}'添加绕过
