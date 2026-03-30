shared-solution-container-component-on-examine-main-text = 其中含有{ $chemCount ->
    [1] 一种[color={$color}]{$desc}[/color]化学物质。
   *[other] 由[color={$color}]{$desc}[/color]组成的混合物。
    }

examinable-solution-has-recognizable-chemicals = 你能从溶液中辨认出{$recognizedString}。
examinable-solution-recognized = [color={$color}]{$chemical}[/color]

examinable-solution-on-examine-volume = 其中的溶液{ $fillLevel ->
    [exact] 当前容量为[color=white]{$current}/{$max}u[/color]。
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold]。
}

examinable-solution-on-examine-volume-no-max = 其中的溶液{ $fillLevel ->
    [exact] 当前容量为[color=white]{$current}u[/color]。
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold]。
}

examinable-solution-on-examine-volume-puddle = 水坑{ $fillLevel ->
    [exact] 容量为[color=white]{$current}u[/color]。
    [full] 已非常大并溢出！
    [mostlyfull] 已非常大并溢出！
    [halffull] 很深且仍在流淌。
    [halfempty] 非常深。
   *[mostlyempty] 汇聚成一片。
    [empty] 形成多个小水坑。
}

-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]已满[/color]
        [mostlyfull] [color=#DFDFDF]大部分已满[/color]
        [halffull] [color=#C8C8C8]半满[/color]
        [halfempty] [color=#C8C8C8]半空[/color]
        [mostlyempty] [color=#A4A4A4]大部分为空[/color]
       *[empty] [color=gray]空[/color]
    }
