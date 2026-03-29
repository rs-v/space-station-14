### 双持物品的本地化文本

wieldable-verb-text-wield = 双持
wieldable-verb-text-unwield = 单持

wieldable-component-successful-wield = 你双持了 { THE($item) }。
wieldable-component-failed-wield = 你放弃双持 { THE($item) }。
wieldable-component-successful-wield-other = { CAPITALIZE(THE($user)) } 双持了 { THE($item) }。
wieldable-component-failed-wield-other = { CAPITALIZE(THE($user)) } 放弃双持 { THE($item) }。
wieldable-component-blocked-wield = { CAPITALIZE(THE($blocker)) } 阻止你双持 { THE($item) }。

wieldable-component-no-hands = 你没有足够的手！
wieldable-component-not-enough-free-hands = {$number ->
    [one] 你需要一只空闲的手来双持 { THE($item) }。
    *[other] 你需要 { $number } 只空闲的手来双持 { THE($item) }。
}
wieldable-component-not-in-hands = { CAPITALIZE(THE($item)) } 不在你手中！

wieldable-component-requires = { CAPITALIZE(THE($item))} 必须双持使用！

gunwieldbonus-component-examine = 这把武器在双持时精准度更高。

gunrequireswield-component-examine = 这把武器只能在双持时才能开火。
