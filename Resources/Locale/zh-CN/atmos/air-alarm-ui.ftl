# UI

## Window

air-alarm-ui-title = 空气警报

air-alarm-ui-access-denied = 权限不足！

air-alarm-ui-window-pressure-label = 压力
air-alarm-ui-window-temperature-label = 温度
air-alarm-ui-window-alarm-state-label = 状态

air-alarm-ui-window-address-label = 地址
air-alarm-ui-window-device-count-label = 设备总数
air-alarm-ui-window-resync-devices-label = 重新同步

air-alarm-ui-window-mode-label = 模式
air-alarm-ui-window-mode-select-locked-label = [bold][color=red] 模式选择器故障！ [/color][/bold]
air-alarm-ui-window-auto-mode-label = 自动模式

-air-alarm-state-name = { $state ->
    [normal] 正常
    [warning] 警告
    [danger] 危险
    [emagged] 已被入侵
   *[invalid] 无效
}

air-alarm-ui-window-listing-title = {$address} : {-air-alarm-state-name(state:$state)}
air-alarm-ui-window-pressure = {$pressure} 千帕
air-alarm-ui-window-pressure-indicator = 压力：[color={$color}]{$pressure} 千帕[/color]
air-alarm-ui-window-temperature = {$tempC} C（{$temperature} K）
air-alarm-ui-window-temperature-indicator = 温度：[color={$color}]{$tempC} C（{$temperature} K）[/color]
air-alarm-ui-window-alarm-state = [color={$color}]{-air-alarm-state-name(state:$state)}[/color]
air-alarm-ui-window-alarm-state-indicator = 状态：[color={$color}]{-air-alarm-state-name(state:$state)}[/color]

air-alarm-ui-window-tab-vents = 通风口
air-alarm-ui-window-tab-scrubbers = 净化器
air-alarm-ui-window-tab-sensors = 传感器

air-alarm-ui-gases = {$gas}：{$amount} 摩尔（{$percentage}%）
air-alarm-ui-gases-indicator = {$gas}：[color={$color}]{$amount} 摩尔（{$percentage}%）[/color]

air-alarm-ui-mode-filtering = 过滤
air-alarm-ui-mode-wide-filtering = 过滤（宽范围）
air-alarm-ui-mode-fill = 充气
air-alarm-ui-mode-panic = 紧急
air-alarm-ui-mode-none = 无


air-alarm-ui-pump-direction-siphoning = 抽气
air-alarm-ui-pump-direction-scrubbing = 净化
air-alarm-ui-pump-direction-releasing = 释放

air-alarm-ui-pressure-bound-nobound = 无限制
air-alarm-ui-pressure-bound-internalbound = 内部限制
air-alarm-ui-pressure-bound-externalbound = 外部限制
air-alarm-ui-pressure-bound-both = 两者均限

air-alarm-ui-widget-gas-filters = 气体过滤器

## Widgets

### General

air-alarm-ui-widget-enable = 已启用
air-alarm-ui-widget-copy = 复制设置到同类设备
air-alarm-ui-widget-copy-tooltip = 将此设备的设置复制到该空气警报选项卡中的所有设备。
air-alarm-ui-widget-ignore = 忽略
air-alarm-ui-atmos-net-device-label = 地址：{$address}

### Vent pumps

air-alarm-ui-vent-pump-label = 通风方向
air-alarm-ui-vent-pressure-label = 压力限制
air-alarm-ui-vent-external-bound-label = 外部限制
air-alarm-ui-vent-internal-bound-label = 内部限制

### Scrubbers

air-alarm-ui-scrubber-pump-direction-label = 方向
air-alarm-ui-scrubber-volume-rate-label = 流速（升）
air-alarm-ui-scrubber-wide-net-label = 宽范围净化
air-alarm-ui-scrubber-select-all-gases-label = 全选
air-alarm-ui-scrubber-deselect-all-gases-label = 取消全选

### Thresholds

air-alarm-ui-sensor-gases = 气体
air-alarm-ui-sensor-thresholds = 阈值
air-alarm-ui-thresholds-pressure-title = 阈值（千帕）
air-alarm-ui-thresholds-temperature-title = 阈值（K）
air-alarm-ui-thresholds-gas-title = 阈值（%）
air-alarm-ui-thresholds-upper-bound = 超出上限危险
air-alarm-ui-thresholds-lower-bound = 低于下限危险
air-alarm-ui-thresholds-upper-warning-bound = 超出上限警告
air-alarm-ui-thresholds-lower-warning-bound = 低于下限警告
air-alarm-ui-thresholds-copy = 复制阈值到所有设备
air-alarm-ui-thresholds-copy-tooltip = 将此设备的传感器阈值复制到该空气警报选项卡中的所有设备。
