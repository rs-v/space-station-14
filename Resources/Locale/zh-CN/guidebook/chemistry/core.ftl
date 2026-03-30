guidebook-reagent-effect-description =
    {$quantity ->
        [0] {""}
        *[other] 若溶液中含有至少 {$quantity}u 的 {$reagent}，{" "}
    }{$chance ->
        [1] { $effect }
        *[other] 有 { NATURALPERCENT($chance, 2) } 的概率 { $effect }
    }{ $conditionCount ->
        [0] 。
        *[other] {" "}当 { $conditions } 时。
    }

guidebook-reagent-name = [bold][color={$color}]{CAPITALIZE($name)}[/color][/bold]
guidebook-reagent-recipes-header = 配方
guidebook-reagent-recipes-reagent-display = [bold]{$reagent}[/bold] \[{$ratio}\]
guidebook-reagent-sources-header = 来源
guidebook-reagent-sources-ent-wrapper = [bold]{$name}[/bold] \[1\]
guidebook-reagent-sources-gas-wrapper = [bold]{$name}（气体）[/bold] \[1\]
guidebook-reagent-effects-header = 效果
guidebook-reagent-effects-metabolism-stage-rate = [bold]{$stage}[/bold] [color=gray]（每秒 {$rate} 单位）[/color]
guidebook-reagent-effects-metabolite-item = {$reagent}，转化率为 { NATURALPERCENT($rate, 2) }
guidebook-reagent-effects-metabolites = 代谢为 { $items }。
guidebook-reagent-plant-metabolisms-header = 植物代谢
guidebook-reagent-plant-metabolisms-rate = [bold]植物代谢[/bold] [color=gray]（基础：每 3 秒 1 单位）[/color]
guidebook-reagent-physical-description = [italic]看起来像是 {$description}。[/italic]
guidebook-reagent-recipes-mix-info = {$minTemp ->
    [0] {$hasMax ->
            [true] 在低于 {NATURALFIXED($maxTemp, 2)}K 时{CAPITALIZE($verb)}
            *[false] {CAPITALIZE($verb)}
        }
    *[other] {CAPITALIZE($verb)}，温度范围{$hasMax ->
            [true] 为 {NATURALFIXED($minTemp, 2)}K 到 {NATURALFIXED($maxTemp, 2)}K
            *[false] 高于 {NATURALFIXED($minTemp, 2)}K
        }
}
