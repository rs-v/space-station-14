cmd-substepatmos-desc = 对指定网格实体的大气模拟执行单步推进。会隐式暂停大气模拟。
cmd-substepatmos-help = 用法：{$command} <实体UID>

cmd-error-no-grid-provided-or-invalid-grid = 必须提供网格实体或站在网格上才能执行单步。
cmd-error-couldnt-parse-entity = 提供的实体无法解析或不存在。请尝试站在要单步推进的网格上。
cmd-error-no-gridatmosphere = 提供的实体没有 GridAtmosphereComponent。
cmd-error-no-gastileoverlay = 提供的实体没有 GasTileOverlayComponent。
cmd-error-no-mapgrid = 提供的实体没有 MapGridComponent。
cmd-error-no-xform = 提供的实体没有 TransformComponent？
cmd-error-no-valid-map = 提供的网格不在有效地图上？

cmd-substepatmos-info-implicitly-paused-simulation = 已隐式暂停 {$grid} 上的大气模拟。
cmd-substepatmos-info-substepped-grid = 已在 {$grid} 上单步推进大气模拟一个大气刻。

cmd-substepatmos-completion-grid-substep = 要单步推进的网格实体UID。若为空则自动使用当前所站网格。
