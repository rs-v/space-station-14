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

# THE() 函数内部使用。
# 中文没有冠词，直接返回实体名称。
zzzz-the = { $ent }

# SUBJECT() 函数内部使用（主格代词）。
zzzz-subject-pronoun = { GENDER($ent) ->
    [male] 他
    [female] 她
    [epicene] 他们
   *[neuter] 它
   }

# OBJECT() 函数内部使用（宾格代词）。
zzzz-object-pronoun = { GENDER($ent) ->
    [male] 他
    [female] 她
    [epicene] 他们
   *[neuter] 它
   }

# DAT-OBJ() 函数内部使用（与格代词）。
zzzz-dat-object = { GENDER($ent) ->
    [male] 他
    [female] 她
    [epicene] 他们
   *[neuter] 它
   }

# GENITIVE() 函数内部使用（属格）。
zzzz-genitive = { GENDER($ent) ->
    [male] 他的
    [female] 她的
    [epicene] 他们的
   *[neuter] 它的
   }

# POSS-ADJ() 函数内部使用（物主形容词）。
zzzz-possessive-adjective = { GENDER($ent) ->
    [male] 他的
    [female] 她的
    [epicene] 他们的
   *[neuter] 它的
   }

# POSS-PRONOUN() 函数内部使用（物主代词）。
zzzz-possessive-pronoun = { GENDER($ent) ->
    [male] 他的
    [female] 她的
    [epicene] 他们的
   *[neuter] 它的
   }

# REFLEXIVE() 函数内部使用（反身代词）。
zzzz-reflexive-pronoun = { GENDER($ent) ->
    [male] 他自己
    [female] 她自己
    [epicene] 他们自己
   *[neuter] 它自己
   }

# CONJUGATE-BE() 函数内部使用。
# 中文动词无词形变化，统一使用"是"。
zzzz-conjugate-be = 是

# CONJUGATE-HAVE() 函数内部使用。
# 中文动词无词形变化，统一使用"有"。
zzzz-conjugate-have = 有

# CONJUGATE-BASIC() 函数内部使用。
# 中文动词无词形变化，使用原形。
zzzz-conjugate-basic = { $first }

# COUNTER() 函数内部使用（量词）。
zzzz-counter-default = 个
