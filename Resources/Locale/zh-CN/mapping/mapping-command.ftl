cmd-mapping-desc = 创建或加载地图并传送到该地图。
cmd-mapping-help = 用法：mapping [MapID] [Path] [Grid]
cmd-mapping-server = 只有玩家才能使用此命令。
cmd-mapping-error = 创建新地图时发生错误。
cmd-mapping-try-grid = 无法将文件加载为地图。尝试将文件作为网格加载……
cmd-mapping-success-load = 从文件 {$path} 创建了 ID 为 {$mapId} 的未初始化地图。
cmd-mapping-success-load-grid = 从文件 {$path} 加载了未初始化的网格，置于 ID 为 {$mapId} 的新地图上。
cmd-mapping-success = 创建了 ID 为 {$mapId} 的未初始化地图。
cmd-mapping-warning = 警告：服务器正在使用调试版本，您的更改可能会丢失。


# duplicate text from engine load/save map commands.
# I CBF making this PR depend on that one.
cmd-mapping-failure-integer = {$arg} 不是有效的整数。
cmd-mapping-failure-float = {$arg} 不是有效的浮点数。
cmd-mapping-failure-bool = {$arg} 不是有效的布尔值。
cmd-mapping-nullspace = 不能加载到地图 0。
cmd-hint-mapping-id = [MapID]
cmd-mapping-hint-grid = [Grid]
cmd-hint-mapping-path = [Path]
cmd-mapping-exists = 地图 {$mapId} 已存在。
