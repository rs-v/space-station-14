delivery-recipient-examine = 这是给{$recipient}，{$job}的。
delivery-already-opened-examine = 它已经被打开过了。
delivery-earnings-examine = 投递这件物品将为空间站赚取[color=yellow]{$spesos}[/color]太空元。
delivery-recipient-no-name = 无名
delivery-recipient-no-job = 未知

delivery-unlocked-self = 你用指纹解锁了{$delivery}。
delivery-opened-self = 你打开了{$delivery}。
delivery-unlocked-others = {CAPITALIZE($recipient)}用{POSS-ADJ($possadj)}指纹解锁了{$delivery}。
delivery-opened-others = {CAPITALIZE($recipient)}打开了{$delivery}。

delivery-unlock-verb = 解锁
delivery-open-verb = 打开
delivery-slice-verb = 切开

delivery-teleporter-amount-examine =
    { $amount ->
        [one] 其中包含[color=yellow]{$amount}[/color]件快递。
        *[other] 其中包含[color=yellow]{$amount}[/color]件快递。
    }
delivery-teleporter-empty = {$entity}是空的。
delivery-teleporter-empty-verb = 取出邮件


# 修饰符
delivery-priority-examine = 这是[color=orange]优先级{$type}[/color]。你还有[color=orange]{$time}[/color]时间来投递以获得奖励。
delivery-priority-delivered-examine = 这是[color=orange]优先级{$type}[/color]。它已按时投递。
delivery-priority-expired-examine = 这是[color=orange]优先级{$type}[/color]。它已超时。

delivery-fragile-examine = 这是[color=red]易碎{$type}[/color]。完好无损地投递可获得奖励。
delivery-fragile-broken-examine = 这是[color=red]易碎{$type}[/color]。它看起来损坏严重。

delivery-bomb-examine = 这是[color=purple]炸弹{$type}[/color]。糟了。
delivery-bomb-primed-examine = 这是[color=purple]炸弹{$type}[/color]。现在阅读这个是在浪费你的时间。
