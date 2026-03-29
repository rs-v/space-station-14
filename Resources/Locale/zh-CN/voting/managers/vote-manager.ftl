# 当没有用户发起投票时显示的发起人
ui-vote-initiator-server = 服务器

## 默认投票

ui-vote-restart-title = 重启回合
ui-vote-restart-succeeded = 重启投票通过。
ui-vote-restart-failed = 重启投票未通过（需要{ TOSTRING($ratio, "P0") }）。
ui-vote-restart-fail-not-enough-ghost-players = 重启投票未通过：发起重启投票需要至少{ $ghostPlayerRequirement }%的幽灵玩家。目前幽灵玩家数量不足。
ui-vote-restart-yes = 是
ui-vote-restart-no = 否
ui-vote-restart-abstain = 弃权

ui-vote-gamemode-title = 下一个游戏模式
ui-vote-gamemode-tie = 游戏模式投票平局！正在选择……{ $picked }
ui-vote-gamemode-win = { $winner }赢得了游戏模式投票！

ui-vote-map-title = 下一张地图
ui-vote-map-tie = 地图投票平局！正在选择……{ $picked }
ui-vote-map-win = { $winner }赢得了地图投票！
ui-vote-map-notlobby = 地图投票仅在回合前大厅中有效！
ui-vote-map-notlobby-time = 地图投票仅在回合前大厅且剩余{ $time }时有效！
ui-vote-map-invalid = { $winner }在地图投票后变为无效！将不会被选择！

# 投票踢人
ui-vote-votekick-unknown-initiator = 一名玩家
ui-vote-votekick-unknown-target = 未知玩家
ui-vote-votekick-title = { $initiator }发起了对用户：{ $targetEntity }的投票踢人。原因：{ $reason }
ui-vote-votekick-yes = 是
ui-vote-votekick-no = 否
ui-vote-votekick-abstain = 弃权
ui-vote-votekick-success = 对{ $target }的投票踢人通过。踢人原因：{ $reason }
ui-vote-votekick-failure = 对{ $target }的投票踢人未通过。踢人原因：{ $reason }
ui-vote-votekick-not-enough-eligible = 在线的合格投票人数不足，无法发起投票踢人：{ $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = 服务器取消了对{ $target }的投票踢人。
