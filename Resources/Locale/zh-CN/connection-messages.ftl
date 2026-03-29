cmd-whitelistadd-desc = 将指定用户名的玩家添加到服务器白名单。
cmd-whitelistadd-help = 用法：whitelistadd <用户名或用户ID>
cmd-whitelistadd-existing = {$username} 已在白名单中！
cmd-whitelistadd-added = {$username} 已添加到白名单
cmd-whitelistadd-not-found = 无法找到 '{$username}'
cmd-whitelistadd-arg-player = [玩家]

cmd-whitelistremove-desc = 将指定用户名的玩家从服务器白名单中移除。
cmd-whitelistremove-help = 用法：whitelistremove <用户名或用户ID>
cmd-whitelistremove-existing = {$username} 不在白名单中！
cmd-whitelistremove-removed = {$username} 已从白名单中移除
cmd-whitelistremove-not-found = 无法找到 '{$username}'
cmd-whitelistremove-arg-player = [玩家]

cmd-kicknonwhitelisted-desc = 踢出服务器中所有未在白名单的玩家。
cmd-kicknonwhitelisted-help = 用法：kicknonwhitelisted

ban-banned-permanent = 此封禁只能通过申诉解除。
ban-banned-permanent-appeal = 此封禁只能通过申诉解除。您可以在 {$link} 提交申诉
ban-expires = 此封禁持续 {$duration} 分钟，将于 {$time} UTC 到期。
ban-banned-1 = 您，或使用此计算机或连接的其他用户，已被禁止在此处游玩。
ban-banned-2 = 封禁原因为："{$reason}"
ban-banned-3 = 创建新账号等规避此封禁的行为将被记录。

soft-player-cap-full = 服务器已满！
panic-bunker-account-denied = 此服务器正处于恐慌掩体模式，通常作为防止突袭的预防措施启用。不符合特定要求的账号暂时不被接受新连接，请稍后再试
panic-bunker-account-denied-reason = 此服务器正处于恐慌掩体模式，通常作为防止突袭的预防措施启用。不符合特定要求的账号暂时不被接受新连接，请稍后再试。原因："{$reason}"
panic-bunker-account-reason-account = 您的 Space Station 14 账号注册时间过短，必须超过 {$minutes} 分钟
panic-bunker-account-reason-overall = 您在服务器上的总游戏时长必须超过 {$minutes} $minutes

whitelist-playtime = 您没有足够的游戏时长加入此服务器，需要至少 {$minutes} 分钟的游戏时长。
whitelist-player-count = 此服务器当前不接受玩家，请稍后再试。
whitelist-notes = 您当前的管理员备注过多，无法加入此服务器。您可以在聊天中输入 /adminremarks 查看您的备注。
whitelist-manual = 您未在此服务器的白名单中。
whitelist-blacklisted = 您已被此服务器列入黑名单。
whitelist-always-deny = 您不被允许加入此服务器。
whitelist-fail-prefix = 未入白名单：{$msg}

cmd-blacklistadd-desc = 将指定用户名的玩家添加到服务器黑名单。
cmd-blacklistadd-help = 用法：blacklistadd <用户名>
cmd-blacklistadd-existing = {$username} 已在黑名单中！
cmd-blacklistadd-added = {$username} 已添加到黑名单
cmd-blacklistadd-not-found = 无法找到 '{$username}'
cmd-blacklistadd-arg-player = [玩家]

cmd-blacklistremove-desc = 将指定用户名的玩家从服务器黑名单中移除。
cmd-blacklistremove-help = 用法：blacklistremove <用户名>
cmd-blacklistremove-existing = {$username} 不在黑名单中！
cmd-blacklistremove-removed = {$username} 已从黑名单中移除
cmd-blacklistremove-not-found = 无法找到 '{$username}'
cmd-blacklistremove-arg-player = [玩家]

baby-jail-account-denied = 此服务器是新手服务器，专为新玩家及希望帮助他们的玩家服务。账号过旧或不在白名单的玩家不被接受新连接。请浏览其他服务器，探索 Space Station 14 的精彩内容，祝玩得开心！
baby-jail-account-denied-reason = 此服务器是新手服务器，专为新玩家及希望帮助他们的玩家服务。账号过旧或不在白名单的玩家不被接受新连接。请浏览其他服务器，探索 Space Station 14 的精彩内容，祝玩得开心！原因："{$reason}"
baby-jail-account-reason-account = 您的 Space Station 14 账号注册时间过长，必须短于 {$minutes} 分钟
baby-jail-account-reason-overall = 您在服务器上的总游戏时长必须短于 {$minutes} $minutes

generic-misconfigured = 服务器配置错误，当前不接受玩家。请联系服务器所有者并稍后再试。

ipintel-server-ratelimited = 此服务器使用需要外部验证的审计系统，但服务器已达到与外部服务的最大验证限制。请联系服务器管理团队告知此情况并获取进一步帮助，或稍后再试。
ipintel-unknown = 此服务器使用需要外部验证的审计系统，但在验证您的连接时遇到错误。请联系服务器管理团队告知此情况并获取进一步帮助，或稍后再试。
ipintel-suspicious = 您似乎正在尝试使用数据中心、代理、VPN 或其他可疑连接进行连接。出于管理原因，我们不允许此类连接游玩。如果您启用了 VPN 或类似服务，请将其关闭后重新连接，或如果您认为这是误判或需要使用这些服务才能游玩，请联系服务器管理团队寻求帮助。

hwid-required = 您的客户端拒绝发送硬件ID，请联系管理团队获取进一步帮助。
