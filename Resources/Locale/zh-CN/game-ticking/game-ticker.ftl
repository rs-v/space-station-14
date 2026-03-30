game-ticker-restart-round = 正在重启轮次……
game-ticker-start-round = 轮次现在开始……
game-ticker-start-round-cannot-start-game-mode-fallback = 无法启动 {$failedGameMode} 模式！正在回退到 {$fallbackMode}……
game-ticker-start-round-cannot-start-game-mode-restart = 无法启动 {$failedGameMode} 模式！正在重启轮次……
game-ticker-start-round-invalid-map = 所选地图 {$map} 不符合游戏模式 {$mode} 的要求。游戏模式可能无法正常运行……
game-ticker-unknown-role = 未知
game-ticker-delay-start = 轮次开始已延迟 {$seconds} 秒。
game-ticker-pause-start = 轮次开始已暂停。
game-ticker-pause-start-resumed = 轮次开始倒计时已恢复。
game-ticker-player-join-game-message = 欢迎来到太空站14！如果这是你第一次游玩，请务必阅读游戏规则，并且不要害怕在本地OOC（局部场外交流）或OOC（通常仅在轮次之间可用）中寻求帮助。
game-ticker-get-info-text = 你好，欢迎来到[color=white]太空站14！[/color]
                            当前轮次：[color=white]#{$roundId}[/color]
                            当前在线玩家数：[color=white]{$playerCount}[/color]
                            当前地图：[color=white]{$mapName}[/color]
                            当前游戏模式：[color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-get-info-preround-text = 你好，欢迎来到[color=white]太空站14！[/color]
                            当前轮次：[color=white]#{$roundId}[/color]
                            当前在线玩家数：[color=white]{$playerCount}[/color]（[color=white]{$readyCount}[/color] 人{$readyCount ->
                                [one] 已
                                *[other] 已
                            }准备就绪）
                            当前地图：[color=white]{$mapName}[/color]
                            当前游戏模式：[color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-no-map-selected = [color=yellow]尚未选择地图！[/color]
game-ticker-player-no-jobs-available-when-joining = 尝试加入游戏时，没有可用的职位。

# 玩家加入时在聊天中向管理员显示
player-join-message = 玩家 {$name} 加入了。
player-first-join-message = 玩家 {$name} 首次加入。

# 玩家离开时在聊天中向管理员显示
player-leave-message = 玩家 {$name} 离开了。

latejoin-arrival-announcement = {$character}（{$job}）已抵达空间站！
latejoin-arrival-announcement-special = {$job} {$character} 就位！
latejoin-arrivals-direction = 将有一班前往你所在空间站的穿梭机即将抵达。
latejoin-arrivals-direction-time = 将有一班前往你所在空间站的穿梭机将在 {$time} 后抵达。
latejoin-arrivals-dumped-from-shuttle = 一股神秘力量阻止你乘坐抵达穿梭机离开。
latejoin-arrivals-teleport-to-spawn = 一股神秘力量将你从抵达穿梭机上传送走了。祝你班次愉快！
latejoin-arrival-sender = 空间站

preset-not-enough-ready-players = 无法启动 {$presetName}。需要 {$minimumPlayers} 名玩家，但当前仅有 {$readyPlayersCount} 人准备就绪。
preset-no-one-ready = 无法启动 {$presetName}。没有玩家准备就绪。

game-run-level-PreRoundLobby = 轮次前大厅
game-run-level-InRound = 轮次进行中
game-run-level-PostRound = 轮次结束后
