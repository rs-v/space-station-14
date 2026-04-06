## Piping/Atmospherics/binary.yml
ent-GasPressurePump = 气压泵
    .desc = 一种通过压力输送气体的泵。
ent-GasVolumePump = 容积式气泵
    .desc = 一种通过容积输送气体的泵。
ent-GasPressureRegulator = 进气压力调节器
    .desc = 当入口压力超过某个阈值时会释放气体的阀门。
ent-GasPassiveGate = 被动闸门
    .desc = 一种不需要电力的单向空气阀。
ent-GasValve = 手动阀门
    .desc = 一种带有阀门的管道，可用于阻断其中的气体流动。
ent-SignalControlledValve = 信号控制阀
    .desc = 一种可通过信号控制阀门的管道。
ent-GasPort = 连接端口
    .desc = 用于连接与大气控制相关的便携设备。
ent-GasDualPortVentPump = 双端口通风泵
    .desc = 带有阀门和泵的装置。具有两个端口，一个用于释放空气时输入，另一个用于抽气时输出。
ent-GasRecycler = 气体循环器
    .desc = 循环利用二氧化碳和一氧化二氮。不含加热器和压缩机。
ent-HeatExchanger = 散热器
    .desc = 在管道与周围环境之间传递热量。

## Piping/Atmospherics/gas_pipe_sensor.yml
ent-GasPipeSensor = 气管传感器
    .desc = 报告所连接管网中气体的状态。

## Piping/Atmospherics/pipes.yml
ent-GasPipeSansLayers = 气管
    .desc = 用来输送气体。
ent-GasPipeHalf = 气管
    .desc = 用来输送气体。
ent-GasPipeStraight = 气管
    .desc = 用来输送气体。
ent-GasPipeBend = 气管
    .desc = 用来输送气体。
ent-GasPipeTJunction = 气管
    .desc = 用来输送气体。
ent-GasPipeFourway = 气管
    .desc = 用来输送气体。
ent-GasPipeBroken = 损坏的气管
    .desc = 它以前是用来输送气体的。
ent-GasPipeManifold = 气管歧管
    .desc = 允许连接不同布局的气管。

## Piping/Atmospherics/special.yml
ent-AtmosDeviceFanTiny = 小型风扇
    .desc = 一台会吹出细微气流的小风扇。
ent-AtmosDeviceFanDirectional = 定向风扇
    .desc = 一台薄风扇，可阻止气体穿过它移动。

## Piping/Atmospherics/trinary.yml
ent-GasFilter = 气体过滤器
    .desc = 对过滤气体非常有用。
ent-GasFilterFlipped = 气体过滤器
    .desc = 对过滤气体非常有用。
ent-GasMixer = 气体混合器
    .desc = 对混合气体非常有用。
ent-GasMixerFlipped = 气体混合器
    .desc = 对混合气体非常有用。
ent-PressureControlledValve = 气动阀
    .desc = 一种由压力控制的双向阀门。当输出管道压力比控制管道压力低 101.325 千帕时开启。

## Piping/Atmospherics/unary.yml
ent-GasVentPump = 通风泵
    .desc = 带有阀门和泵的装置。
ent-GasPassiveVent = 被动通风口
    .desc = 一个开放式通风口。
ent-GasVentScrubber = 空气净化器
    .desc = 带有阀门和泵的装置。
ent-GasOutletInjector = 气体注射器
    .desc = 带有阀门和泵的装置。
ent-BaseGasThermoMachine = 温控机
    .desc = 用于调节气体温度的机器。
ent-GasThermoMachineFreezer = 制冷机
    .desc = 冷却连接管道中的气体。
ent-GasThermoMachineHeater = 加热机
    .desc = 加热连接管道中的气体。
ent-GasThermoMachineHellfireFreezer = 地狱火制冷机
    .desc = 一种先进的机器，可冷却连接管道中的气体。副作用是会冷却周围区域。冷若地狱！
ent-GasThermoMachineHellfireHeater = 地狱火加热机
    .desc = 一种先进的机器，可加热连接管道中的气体。副作用是会向周围区域泄露热量。热若地狱！
ent-BaseGasCondenser = 气体冷凝器
    .desc = 将气体冷凝为液体。现在我们只需要一些管道系统了。

## Piping/Disposal/high_pressure_machine_frame.yml
ent-DisposalMachineFrame = 高压机器框架
    .desc = 一种为承受空间站废料处理系统所用压力而制造的机器框架。

## Piping/Disposal/pipes.yml
ent-DisposalSignalRouter = 废物管道信号路由器
    .desc = 一种由信号控制的三路路由器。
## miners.yml

ent-GasMinerBase = 气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerOxygen = O2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerOxygenStation = O2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerOxygenStationLarge = O2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerNitrogen = N2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerNitrogenStation = N2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerNitrogenStationLarge = N2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerCarbonDioxide = CO2气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerPlasma = 等离子气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerTritium = 氚气采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerFrezon = 弗列昂气体采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerWaterVapor = 水蒸气采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerAmmonia = 氨气采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

ent-GasMinerNitrousOxide = 一氧化二氮采集器
    .desc = 从下方（还是上方？）的气态巨行星中开采的气体，会经由这个巨大的排气口流出。

## pipes.yml

ent-DisposalHolder = 废料架
    .desc = 废料处理系统中用于容纳和运输实体的载具。

ent-DisposalPipeBroken = 破损的废料管
    .desc = 一根 BBP（大破管）。

ent-DisposalPipe = 废料管段
    .desc = 用于建造废料处理系统的巨大管段。

ent-DisposalTagger = 废料标签管
    .desc = 一种能为实体添加标签以便路由的管道。

ent-DisposalSignaller = 废料信号管
    .desc = 当有物品通过时会发出信号的管道。

ent-DisposalTrunk = 废料主管道
    .desc = 用作废料处理系统入口的主管道。

ent-DisposalRouter = 废料路由器
    .desc = 三路分流器。带有匹配标签的实体会通过可配置的过滤器被分流至侧向管道。

ent-DisposalJunction = 废料三通管
    .desc = 三路交汇管。箭头指示物品的出口方向。

ent-DisposalYJunction = 废料Y型管
    .desc = 带有额外出口点的三路交汇管。

ent-DisposalXJunction = 废料十字管
    .desc = 四路交汇管。箭头指示物品的出口方向。

ent-DisposalBend = 废料弯管
    .desc = 呈90度弯曲的管道。

## portable.yml

ent-PortableScrubber = 便携式净化器
    .desc = 便携式净化装置！

ent-SpaceHeater = 空间加热器
    .desc = 一种利用蓝空技术改变局部温度的装置。通常被称为"空间加热器"。

## units.yml

ent-DisposalUnit = 垃圾处理单元
    .desc = 一种气动废料处理单元。

ent-MailingUnit = 气动邮件单元
    .desc = 一种用于气动投递邮件的装置。

