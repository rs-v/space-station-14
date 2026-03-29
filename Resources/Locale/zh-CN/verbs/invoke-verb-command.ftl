### 调用动词命令的本地化。
# 主要为帮助信息和错误信息。

invoke-verb-command-description = 以玩家实体为主体，对指定实体调用给定名称的动词
invoke-verb-command-help = invokeverb <playerUid | "self"> <targetUid> <verbName | "interaction" | "activation" | "alternative">

invoke-verb-command-invalid-args = invokeverb 需要 2 个参数。

invoke-verb-command-invalid-player-uid = 玩家 uid 无法解析，或未传入 "self"。
invoke-verb-command-invalid-target-uid = 目标 uid 无法解析。

invoke-verb-command-invalid-player-entity = 给定的玩家 uid 不对应有效实体。
invoke-verb-command-invalid-target-entity = 给定的目标 uid 不对应有效实体。

invoke-verb-command-success = 已以 { $player } 为用户，对 { $target } 调用动词"{ $verb }"。

invoke-verb-command-verb-not-found = 在 { $target } 上找不到动词 { $verb }。
