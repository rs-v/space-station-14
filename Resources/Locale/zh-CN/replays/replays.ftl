# 加载界面

replay-loading = 正在加载（{$cur}/{$total}）
replay-loading-reading = 读取文件
replay-loading-processing = 处理文件
replay-loading-spawning = 生成实体
replay-loading-initializing = 初始化实体
replay-loading-starting= 启动实体
replay-loading-failed = 回放加载失败。错误：
                        {$reason}
replay-loading-retry = 尝试以更高异常容忍度加载——可能导致漏洞！
replay-loading-cancel = 取消

# 主菜单
replay-menu-subtext = 回放客户端
replay-menu-load = 加载所选回放
replay-menu-select = 选择一个回放
replay-menu-open = 打开回放文件夹
replay-menu-none = 未找到任何回放。

# 主菜单信息框
replay-info-title = 回放信息
replay-info-none-selected = 未选择回放
replay-info-invalid = [color=red]所选回放无效[/color]
replay-info-info = {"["}color=gray]已选择：[/color]  {$name}（{$file}）
                   {"["}color=gray]时间：[/color]   {$time}
                   {"["}color=gray]轮次 ID：[/color]   {$roundId}
                   {"["}color=gray]时长：[/color]   {$duration}
                   {"["}color=gray]分支 ID：[/color]   {$forkId}
                   {"["}color=gray]版本：[/color]   {$version}
                   {"["}color=gray]引擎：[/color]   {$engVersion}
                   {"["}color=gray]类型哈希：[/color]   {$hash}
                   {"["}color=gray]组件哈希：[/color]   {$compHash}

# 回放选择窗口
replay-menu-select-title = 选择回放

# 回放相关动作
replay-verb-spectate = 旁观

# 命令
cmd-replay-spectate-help = replay_spectate [可选实体]
cmd-replay-spectate-desc = 将本地玩家附加到指定实体 UID 或取消附加。
cmd-replay-spectate-hint = 可选实体 UID

cmd-replay-toggleui-desc = 切换回放控制界面的显示。
