cmd-atvrange-desc = 设置大气调试范围（以两个浮点数表示：起始值[红色]和终止值[蓝色]）
cmd-atvrange-help = 用法：{$command} <起始值> <终止值>
cmd-atvrange-error-start = 无效的起始浮点数
cmd-atvrange-error-end = 无效的终止浮点数
cmd-atvrange-error-zero = 比例不能为零，否则会导致 AtmosDebugOverlay 中出现除以零的错误。

cmd-atvmode-desc = 设置大气调试模式。此操作将自动重置比例。
cmd-atvmode-help = 用法：{$command} <TotalMoles/GasMoles/Temperature> [<气体ID（用于GasMoles）>]
cmd-atvmode-error-invalid = 无效的模式
cmd-atvmode-error-target-gas = 此模式需要指定目标气体。
cmd-atvmode-error-out-of-range = 气体ID无法解析或超出范围。
cmd-atvmode-error-info = 此模式无需其他信息。

cmd-atvcbm-desc = 从红/绿/蓝切换为灰度模式
cmd-atvcbm-help = 用法：{$command} <true/false>
cmd-atvcbm-error = 无效的标志
