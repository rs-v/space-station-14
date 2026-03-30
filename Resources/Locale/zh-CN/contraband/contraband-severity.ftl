contraband-examine-text-Minor =
    { $type ->
        *[item] [color=yellow]该物品被视为轻微违禁品。[/color]
        [reagent] [color=yellow]该试剂被视为轻微违禁品。[/color]
    }

contraband-examine-text-Restricted =
    { $type ->
        *[item] [color=yellow]该物品在部门内受到限制。[/color]
        [reagent] [color=yellow]该试剂在部门内受到限制。[/color]
    }

contraband-examine-text-Restricted-department =
    { $type ->
        *[item] [color=yellow]该物品仅限{$departments}使用，可能被视为违禁品。[/color]
        [reagent] [color=yellow]该试剂仅限{$departments}使用，可能被视为违禁品。[/color]
    }

contraband-examine-text-Major =
    { $type ->
        *[item] [color=red]该物品被视为重大违禁品。[/color]
        [reagent] [color=red]该试剂被视为重大违禁品。[/color]
    }

contraband-examine-text-GrandTheft =
    { $type ->
        *[item] [color=red]该物品是联合会特工的高价值目标！[/color]
        [reagent] [color=red]该试剂是联合会特工的高价值目标！[/color]
    }

contraband-examine-text-Highly-Illegal =
    { $type ->
        *[item] [color=crimson]该物品是高度非法的违禁品！[/color]
        [reagent] [color=crimson]该试剂是高度非法的违禁品！[/color]
    }

contraband-examine-text-Syndicate =
    { $type ->
        *[item] [color=crimson]该物品是高度非法的联合会违禁品！[/color]
        [reagent] [color=crimson]该试剂是高度非法的联合会违禁品！[/color]
    }

contraband-examine-text-Magical =
    { $type ->
        *[item] [color=#b337b3]该物品是高度非法的魔法违禁品！[/color]
        [reagent] [color=#b337b3]该试剂是高度非法的魔法违禁品！[/color]
    }

contraband-examine-text-avoid-carrying-around = [color=red][italic]没有充分理由的情况下，你最好避免公开携带此物。[/italic][/color]
contraband-examine-text-in-the-clear = [color=green][italic]你可以公开携带此物。[/italic][/color]

contraband-examinable-verb-text = 合法性
contraband-examinable-verb-message = 检查此物品的合法性。

contraband-department-plural = {$department}
contraband-job-plural = {MAKEPLURAL($job)}
