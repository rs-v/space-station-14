# 各种实体状态及客户端 PVS 相关命令的本地化字符串

cmd-reset-ent-help = 用法：{$command} <实体 UID>
cmd-reset-ent-desc = 将实体重置为最近收到的服务器状态。这也将重置已分离到虚空的实体。

cmd-reset-all-ents-help = 用法：{$command}
cmd-reset-all-ents-desc = 将所有实体重置为最近收到的服务器状态。这只影响未分离到虚空的实体。

cmd-detach-ent-help = 用法：{$command} <实体 UID>
cmd-detach-ent-desc = 将实体分离到虚空，如同其离开了 PVS 范围。

cmd-local-delete-help = 用法：{$command} <实体 UID>
cmd-local-delete-desc = 删除一个实体。与普通删除命令不同，这是客户端操作。除非该实体是客户端实体，否则可能会导致错误。

cmd-full-state-reset-help = 用法：{$command}
cmd-full-state-reset-desc = 丢弃所有实体状态信息并从服务器请求完整状态。
