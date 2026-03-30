parcel-wrap-verb-wrap = 包裹
parcel-wrap-verb-unwrap = 拆包

parcel-wrap-popup-parcel-destroyed = 包裹{ THE($contents) }的包装被破坏了！
parcel-wrap-popup-being-wrapped = {CAPITALIZE(THE($user))}正在尝试把您打包！
parcel-wrap-popup-being-wrapped-self = 您开始把自己打包。

# Shown when parcel wrap is examined in details range
parcel-wrap-examine-detail-uses = { $uses ->
    [one] 还剩[color={$markupUsesColor}]{$uses}[/color]次使用次数
    *[other] 还剩[color={$markupUsesColor}]{$uses}[/color]次使用次数
}。
