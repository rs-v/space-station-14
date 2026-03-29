markings-search = 搜索
-markings-selection = { $selectable ->
    [0] 你没有剩余可选纹样。
    [one] 你还可以选择一个纹样。
   *[other] 你还可以选择{ $selectable }个纹样。
}
markings-limits = { $required ->
    [true] { $count ->
        [-1] 请至少选择一个纹样。
        [0] 你不能选择任何纹样，但不知为何你必须选择？这是个漏洞。
        [one] 请选择一个纹样。
       *[other] 请至少选择一个纹样，最多选择{$count}个。{ -markings-selection(selectable: $selectable) }
    }
   *[false] { $count ->
        [-1] 可选择任意数量的纹样。
        [0] 你不能选择任何纹样。
        [one] 最多选择一个纹样。
       *[other] 最多选择{$count}个纹样。{ -markings-selection(selectable: $selectable) }
    }
}
markings-reorder = 重新排序纹样

humanoid-marking-modifier-respect-limits = 遵守限制
humanoid-marking-modifier-respect-group-sex = 遵守群组和性别限制
humanoid-marking-modifier-base-layers = 基础图层
humanoid-marking-modifier-enable = 启用
humanoid-marking-modifier-prototype-id = 原型ID：

# 分类

markings-organ-Torso = 躯干
markings-organ-Head = 头部
markings-organ-ArmLeft = 左臂
markings-organ-ArmRight = 右臂
markings-organ-HandRight = 右手
markings-organ-HandLeft = 左手
markings-organ-LegLeft = 左腿
markings-organ-LegRight = 右腿
markings-organ-FootLeft = 左脚
markings-organ-FootRight = 右脚
markings-organ-Eyes = 眼睛

markings-layer-Special = 特殊
markings-layer-Tail = 尾巴
markings-layer-Tail-Moth = 翅膀
markings-layer-Hair = 头发
markings-layer-FacialHair = 面部毛发
markings-layer-UndergarmentTop = 内衣上装
markings-layer-UndergarmentBottom = 内裤
markings-layer-Chest = 胸部
markings-layer-Head = 头部
markings-layer-Snout = 口鼻
markings-layer-SnoutCover = 口鼻（覆盖）
markings-layer-HeadSide = 头部（侧面）
markings-layer-HeadTop = 头部（顶部）
markings-layer-Eyes = 眼睛
markings-layer-RArm = 右臂
markings-layer-LArm = 左臂
markings-layer-RHand = 右手
markings-layer-LHand = 左手
markings-layer-RLeg = 右腿
markings-layer-LLeg = 左腿
markings-layer-RFoot = 右脚
markings-layer-LFoot = 左脚
markings-layer-Overlay = 覆盖层
markings-layer-TailOverlay = 覆盖层
