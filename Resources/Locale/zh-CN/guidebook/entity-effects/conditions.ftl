entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648] 目标的总伤害至少为 {NATURALFIXED($min, 2)}
        *[other] { $min ->
                    [0] 目标的总伤害至多为 {NATURALFIXED($max, 2)}
                    *[other] 目标的总伤害在 {NATURALFIXED($min, 2)} 到 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648] 目标的 {$type} 伤害至少为 {NATURALFIXED($min, 2)}
        *[other] { $min ->
                    [0] 目标的 {$type} 伤害至多为 {NATURALFIXED($max, 2)}
                    *[other] 目标的 {$type} 伤害在 {NATURALFIXED($min, 2)} 到 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648] 目标的 {$type} 伤害至少为 {NATURALFIXED($min, 2)}。
        *[other] { $min ->
                    [0] 目标的 {$type} 伤害至多为 {NATURALFIXED($max, 2)}。
                    *[other] 目标的 {$type} 伤害在 {NATURALFIXED($min, 2)} 到 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] 目标的总饥饿值至少为 {NATURALFIXED($min, 2)}
        *[other] { $min ->
                    [0] 目标的总饥饿值至多为 {NATURALFIXED($max, 2)}
                    *[other] 目标的总饥饿值在 {NATURALFIXED($min, 2)} 到 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] 溶液中 {$reagent} 的含量至少为 {NATURALFIXED($min, 2)}u
        *[other] { $min ->
                    [0] 溶液中 {$reagent} 的含量至多为 {NATURALFIXED($max, 2)}u
                    *[other] 溶液中 {$reagent} 的含量在 {NATURALFIXED($min, 2)}u 到 {NATURALFIXED($max, 2)}u 之间
                 }
    }

entity-condition-guidebook-mob-state-condition =
    生物体处于 { $state } 状态

entity-condition-guidebook-job-condition =
    目标的职业是 { $job }

entity-condition-guidebook-solution-temperature =
    溶液温度 { $max ->
            [2147483648] 至少为 {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] 至多为 {NATURALFIXED($max, 2)}K
                        *[other] 在 {NATURALFIXED($min, 2)}K 到 {NATURALFIXED($max, 2)}K 之间
                     }
    }

entity-condition-guidebook-body-temperature =
    体温 { $max ->
            [2147483648] 至少为 {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] 至多为 {NATURALFIXED($max, 2)}K
                        *[other] 在 {NATURALFIXED($min, 2)}K 到 {NATURALFIXED($max, 2)}K 之间
                     }
    }

entity-condition-guidebook-organ-type =
    代谢器官 { $shouldhave ->
                  [true] 是
                  *[false] 不是
             } {$name} 器官

entity-condition-guidebook-has-tag =
    目标 { $invert ->
             [true] 没有
             *[false] 拥有
            } 标签 {$tag}

entity-condition-guidebook-this-reagent = 该试剂

entity-condition-guidebook-breathing =
    代谢者 { $isBreathing ->
                [true] 正常呼吸
                *[false] 正在窒息
               }

entity-condition-guidebook-internals =
    代谢者 { $usingInternals ->
                [true] 正在使用内部供氧
                *[false] 正在呼吸大气中的空气
               }
