## UI

injector-volume-transfer-label = 容量：[color=white]{$currentVolume}/{$totalVolume}u[/color]
    模式：[color=white]{$modeString}[/color]（[color=white]{$transferVolume}u[/color]）
injector-volume-label = 容量：[color=white]{$currentVolume}/{$totalVolume}u[/color]
    模式：[color=white]{$modeString}[/color]
injector-toggle-verb-text = 切换注射器模式

## Entity

injector-component-inject-mode-name = 注射
injector-component-draw-mode-name = 抽取
injector-component-dynamic-mode-name = 动态
injector-component-mode-changed-text = 已切换为{$mode}模式
injector-component-transfer-success-message = 你向{THE($target)}转移了{$amount}u。
injector-component-transfer-success-message-self = 你向自己转移了{$amount}u。
injector-component-inject-success-message = 你向{THE($target)}注射了{$amount}u！
injector-component-inject-success-message-self = 你向自己注射了{$amount}u！
injector-component-draw-success-message = 你从{THE($target)}抽取了{$amount}u。
injector-component-draw-success-message-self = 你从自己身上抽取了{$amount}u。

## Fail Messages

injector-component-target-already-full-message = {CAPITALIZE(THE($target))}已满！
injector-component-target-already-full-message-self = 你已经满了！
injector-component-target-is-empty-message = {CAPITALIZE(THE($target))}是空的！
injector-component-target-is-empty-message-self = 你是空的！
injector-component-cannot-toggle-draw-message = 太满了，无法抽取！
injector-component-cannot-toggle-inject-message = 没有可注射的内容！
injector-component-cannot-toggle-dynamic-message = 无法切换动态模式！
injector-component-empty-message = {CAPITALIZE(THE($injector))}是空的！
injector-component-blocked-user = 防护装备阻止了你的注射！
injector-component-blocked-other = {CAPITALIZE(THE(POSS-ADJ($target)))}的护甲阻止了{THE($user)}的注射！
injector-component-cannot-transfer-message = 你无法向{THE($target)}转移！
injector-component-cannot-transfer-message-self = 你无法向自己转移！
injector-component-cannot-inject-message = 你无法向{THE($target)}注射！
injector-component-cannot-inject-message-self = 你无法向自己注射！
injector-component-cannot-draw-message = 你无法从{THE($target)}抽取！
injector-component-cannot-draw-message-self = 你无法从自己身上抽取！
injector-component-ignore-mobs = 此注射器只能与容器交互！

## mob-inject doafter messages

injector-component-needle-injecting-user = 你开始推针注射。
injector-component-needle-injecting-target = {CAPITALIZE(THE($user))}正试图向你注射针剂！
injector-component-needle-drawing-user = 你开始回抽针筒。
injector-component-needle-drawing-target = {CAPITALIZE(THE($user))}正试图用针从你身上抽取！
injector-component-spray-injecting-user = 你开始准备喷嘴。
injector-component-spray-injecting-target = {CAPITALIZE(THE($user))}正试图将喷嘴放在你身上！

## Target Popup Success messages
injector-component-feel-prick-message = 你感到一阵轻微的刺痛！
