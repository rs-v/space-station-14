discord-watchlist-connection-header =
    { $players ->
        [one] {$players}名监控名单上的玩家已
        *[other] {$players}名监控名单上的玩家已
    }连接到{$serverName}

discord-watchlist-connection-entry = - {$playerName}，备注"{$message}"{ $expiry ->
        [0] {""}
        *[other] {" "}（<t:{$expiry}:R>到期）
    }{ $otherWatchlists ->
        [0] {""}
        [one] {" "}以及另外{$otherWatchlists}个监控名单
        *[other] {" "}以及另外{$otherWatchlists}个监控名单
    }
