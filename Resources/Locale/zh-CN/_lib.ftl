### 本地化器内部使用的特殊消息。

# PRESSURE() 函数内部使用。
zzzz-fmt-pressure = { TOSTRING($divided, "F1") } { $places ->
    [0] kPa
    [1] MPa
    [2] GPa
    [3] TPa
    [4] PBa
    *[5] ???
}

# POWERWATTS() 函数内部使用。
zzzz-fmt-power-watts = { TOSTRING($divided, "F1") } { $places ->
    [0] W
    [1] kW
    [2] MW
    [3] GW
    [4] TW
    *[5] ???
}

# POWERJOULES() 函数内部使用。
# 提示：1焦耳 = 1瓦特持续1秒（瓦特乘以秒即为焦耳）。
# 因此1千瓦时等于3,600,000焦耳（3.6MJ）
zzzz-fmt-power-joules = { TOSTRING($divided, "F1") } { $places ->
    [0] J
    [1] kJ
    [2] MJ
    [3] GJ
    [4] TJ
    *[5] ???
}

# ENERGYWATTHOURS() 函数内部使用。
zzzz-fmt-energy-watt-hours = { TOSTRING($divided, "F1") } { $places ->
    [0] Wh
    [1] kWh
    [2] MWh
    [3] GWh
    [4] TWh
    *[5] ???
}

# PLAYTIME() 函数内部使用。
zzzz-fmt-playtime = {$hours}小时 {$minutes}分钟
