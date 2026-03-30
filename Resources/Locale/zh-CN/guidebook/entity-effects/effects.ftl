-create-3rd-person =
    { $chance ->
        [1] 创造
        *[other] 创造
    }

-cause-3rd-person =
    { $chance ->
        [1] 导致
        *[other] 导致
    }

-satiate-3rd-person =
    { $chance ->
        [1] 满足
        *[other] 满足
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] 创造
        *[other] 创造
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} 个 {$entname}
    }

entity-effect-guidebook-destroy =
    { $chance ->
        [1] 摧毁
        *[other] 摧毁
    } 该物体

entity-effect-guidebook-break =
    { $chance ->
        [1] 损坏
        *[other] 损坏
    } 该物体

entity-effect-guidebook-explosion =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 爆炸

entity-effect-guidebook-emp =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 电磁脉冲

entity-effect-guidebook-flash =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 致盲闪光

entity-effect-guidebook-foam-area =
    { $chance ->
        [1] 产生
        *[other] 产生
    } 大量泡沫

entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] 产生
        *[other] 产生
    } 大量烟雾

entity-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] 满足
        *[other] 满足
    } { $relative ->
        [1] 平均速率的口渴需求
        *[other] {NATURALFIXED($relative, 3)} 倍平均速率的口渴需求
    }

entity-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] 满足
        *[other] 满足
    } { $relative ->
        [1] 平均速率的饥饿需求
        *[other] {NATURALFIXED($relative, 3)} 倍平均速率的饥饿需求
    }

entity-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] 治愈
                [deals] 造成
                *[both] 修改生命值，变化量为
             }
        *[other] { $healsordeals ->
                    [heals] 治愈
                    [deals] 造成
                    *[both] 修改生命值，变化量为
                 }
    } { $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
        [1] { $healsordeals ->
            [heals] 均匀治愈
            [deals] 均匀造成
            *[both] 均匀修改生命值，变化量为
        }
        *[other] { $healsordeals ->
            [heals] 均匀治愈
            [deals] 均匀造成
            *[both] 均匀修改生命值，变化量为
        }
    } { $changes }

entity-effect-guidebook-status-effect-old =
    { $type ->
        [update]{ $chance ->
                    [1] 引发
                     *[other] 引发
                 } {LOC($key)}，持续至少 {NATURALFIXED($time, 3)} 秒（不累加）
        [add]   { $chance ->
                    [1] 引发
                    *[other] 引发
                } {LOC($key)}，持续至少 {NATURALFIXED($time, 3)} 秒（可累加）
        [set]  { $chance ->
                    [1] 引发
                    *[other] 引发
                } {LOC($key)}，持续 {NATURALFIXED($time, 3)} 秒（不累加）
        *[remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                } {LOC($key)} 的 {NATURALFIXED($time, 3)} 秒效果
    }

entity-effect-guidebook-status-effect =
    { $type ->
        [update]{ $chance ->
                    [1] 引发
                    *[other] 引发
                 } {LOC($key)}，持续至少 {NATURALFIXED($time, 3)} 秒（不累加）
        [add]   { $chance ->
                    [1] 引发
                    *[other] 引发
                } {LOC($key)}，持续至少 {NATURALFIXED($time, 3)} 秒（可累加）
        [set]  { $chance ->
                    [1] 引发
                    *[other] 引发
                } {LOC($key)}，持续至少 {NATURALFIXED($time, 3)} 秒（不累加）
        *[remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                } {LOC($key)} 的 {NATURALFIXED($time, 3)} 秒效果
    } { $delay ->
        [0] 立即生效
        *[other] 延迟 {NATURALFIXED($delay, 3)} 秒后生效
    }

entity-effect-guidebook-status-effect-indef =
    { $type ->
        [update]{ $chance ->
                    [1] 引发
                    *[other] 引发
                 } 永久性 {LOC($key)}
        [add]   { $chance ->
                    [1] 引发
                    *[other] 引发
                } 永久性 {LOC($key)}
        [set]  { $chance ->
                    [1] 引发
                    *[other] 引发
                } 永久性 {LOC($key)}
        *[remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                } {LOC($key)}
    } { $delay ->
        [0] 立即生效
        *[other] 延迟 {NATURALFIXED($delay, 3)} 秒后生效
    }

entity-effect-guidebook-knockdown =
    { $type ->
        [update]{ $chance ->
                    [1] 引发
                    *[other] 引发
                    } {LOC($key)}，持续至少 {NATURALFIXED($time, 3)} 秒（不累加）
        [add]   { $chance ->
                    [1] 引发
                    *[other] 引发
                } 击倒，持续至少 {NATURALFIXED($time, 3)} 秒（可累加）
        *[set]  { $chance ->
                    [1] 引发
                    *[other] 引发
                } 击倒，持续至少 {NATURALFIXED($time, 3)} 秒（不累加）
        [remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                } {NATURALFIXED($time, 3)} 秒的击倒效果
    }

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] 将
        *[other] 将
    } 溶液温度精确设置为 {NATURALFIXED($temperature, 2)}K

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] 向溶液
                *[-1] 从溶液中
            }
        *[other]
            { $deltasign ->
                [1] 向溶液
                *[-1] 从溶液中
            }
    } { $deltasign ->
                [1] 加热，直到达到至多 {NATURALFIXED($maxtemp, 2)}K
                *[-1] 冷却，直到达到至少 {NATURALFIXED($mintemp, 2)}K
            }

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] 向溶液中添加
                *[-1] 从溶液中移除
            }
        *[other]
            { $deltasign ->
                [1] 向溶液中添加
                *[-1] 从溶液中移除
            }
    } {NATURALFIXED($amount, 2)}u 的 {$reagent}

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] 向溶液中添加
                *[-1] 从溶液中移除
            }
        *[other]
            { $deltasign ->
                [1] 向溶液中添加
                *[-1] 从溶液中移除
            }
    } {NATURALFIXED($amount, 2)}u 属于 {$group} 组的试剂

entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] 向
                *[-1] 从
            }
        *[other]
            { $deltasign ->
                [1] 向
                *[-1] 从
            }
    } 所在身体 { $deltasign ->
            [1] 添加
            *[-1] 移除
        } {POWERJOULES($amount)} 的热量

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 疾病 { $disease }

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 以下疾病之一：{ $diseases }

entity-effect-guidebook-jittering =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 颤抖

entity-effect-guidebook-clean-bloodstream =
    { $chance ->
        [1] 清除
        *[other] 清除
    } 血液中的其他化学物质

entity-effect-guidebook-cure-disease =
    { $chance ->
        [1] 治愈
        *[other] 治愈
    } 疾病

entity-effect-guidebook-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] 造成
                *[-1] 治愈
            }
        *[other]
            { $deltasign ->
                [1] 造成
                *[-1] 治愈
            }
    } 眼部伤害

entity-effect-guidebook-vomit =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 呕吐

entity-effect-guidebook-create-gas =
    { $chance ->
        [1] 产生
        *[other] 产生
    } { $moles } 摩尔 { $gas }

entity-effect-guidebook-drunk =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 醉酒

entity-effect-guidebook-electrocute =
    { $chance ->
        [1] { $stuns ->
            [true] 电击晕
            *[false] 电击
            }
        *[other] { $stuns ->
            [true] 电击晕
            *[false] 电击
            }
    } 代谢者 {NATURALFIXED($time, 3)} 秒

entity-effect-guidebook-emote =
    { $chance ->
        [1] 强制
        *[other] 强制
    } 代谢者做出 [bold][color=white]{$emote}[/color][/bold] 动作

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] 扑灭
        *[other] 扑灭
    } 火焰

entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] 提高
        *[other] 提高
    } 可燃性

entity-effect-guidebook-ignite =
    { $chance ->
        [1] 点燃
        *[other] 点燃
    } 代谢者

entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] 使
        *[other] 使
    } 代谢者获得意识

entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] 将代谢者变形为
        *[other] 将代谢者变形为
    } { $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] 引发
                *[-1] 减少
            }
        *[other] { $deltasign ->
                    [1] 引发
                    *[-1] 减少
                 }
    } 出血

entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] 增加
                *[-1] 减少
            }
        *[other] { $deltasign ->
                    [1] 增加
                    *[-1] 减少
                 }
    } 血量

entity-effect-guidebook-paralyze =
    { $chance ->
        [1] 使代谢者瘫痪
        *[other] 使代谢者瘫痪
    } 至少 {NATURALFIXED($time, 3)} 秒

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] 修改
        *[other] 修改
    } 移动速度为 {NATURALFIXED($sprintspeed, 3)} 倍，持续至少 {NATURALFIXED($time, 3)} 秒

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] 暂时抑制
        *[other] 暂时抑制
    } 嗜睡症发作

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] 洗去
        *[other] 洗去
    } 脸上的奶油派

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] 治愈
        *[other] 治愈
    } 正在进行的僵尸感染

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] 使目标感染
        *[other] 使目标感染
    } 僵尸病毒

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] 治愈
        *[other] 治愈
    } 正在进行的僵尸感染，并提供对未来感染的免疫力

entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] 恢复
        *[other] 恢复
    } {NATURALFIXED($time, 3)} 秒的腐烂进度

entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] 引发
        *[other] 引发
    } 烟雾或泡沫反应，持续 {NATURALFIXED($duration, 3)} 秒

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] 使
        *[other] 使
    } {$reagent} 被添加到内部溶液容器中

entity-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] 有助于
        *[other] 有助于
        } 解锁外星人工制品。

entity-effect-guidebook-artifact-durability-restore =
    恢复活跃的外星人工制品节点 {$restored} 点耐久度。

entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] 调整
        *[other] 调整
    } {$attribute}，变化量为 {$positive ->
    [true] [color=red]{$amount}[/color]
    *[false] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] 使植物回退
        *[other] 使植物回退
    } 年龄，取决于植物的当前年龄和生长时间

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] 恢复
        *[other] 恢复
    } 因突变而失去活力的植物的生存能力

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] 提高
        *[other] 提高
    } 植物的寿命和/或基础生命值，每项各有 10% 概率生效

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] 提高
        *[other] 提高
    } 植物效力 {$increase}，上限为 {$limit}。当效力达到 {$seedlesstreshold} 时，植物将失去种子。在效力达到 {$limit} 后继续添加效力可能以 10% 的概率导致产量下降

entity-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] 恢复植物的
        *[other] 恢复植物的
    } 种子

entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] 移除植物的
        *[other] 移除植物的
    } 种子

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] 使植物突变以产出
        *[other] 使植物突变以产出
    } {$name}
