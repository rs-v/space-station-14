### 界面

chat-manager-max-message-length = 您的消息超过了 {$maxMessageLength} 字符限制
chat-manager-ooc-chat-enabled-message = OOC 聊天已启用。
chat-manager-ooc-chat-disabled-message = OOC 聊天已禁用。
chat-manager-looc-chat-enabled-message = LOOC 聊天已启用。
chat-manager-looc-chat-disabled-message = LOOC 聊天已禁用。
chat-manager-dead-looc-chat-enabled-message = 死亡玩家现在可以使用 LOOC。
chat-manager-dead-looc-chat-disabled-message = 死亡玩家不再能使用 LOOC。
chat-manager-crit-looc-chat-enabled-message = 濒死玩家现在可以使用 LOOC。
chat-manager-crit-looc-chat-disabled-message = 濒死玩家不再能使用 LOOC。
chat-manager-admin-ooc-chat-enabled-message = 管理员 OOC 聊天已启用。
chat-manager-admin-ooc-chat-disabled-message = 管理员 OOC 聊天已禁用。

chat-manager-max-message-length-exceeded-message = 您的消息超过了 {$limit} 字符限制
chat-manager-no-headset-on-message = 您没有佩戴耳机！
chat-manager-no-radio-key = 未指定无线电频道键！
chat-manager-no-such-channel = 不存在频道键为 '{$key}' 的频道！
chat-manager-whisper-headset-on-message = 您不能在无线电中耳语！

chat-manager-server-wrap-message = [bold]{$message}[/bold]
chat-manager-sender-announcement = 中央指挥部
chat-manager-sender-announcement-wrap-message = [font size=14][bold]{$sender} 公告：[/font][font size=12]
                                                {$message}[/bold][/font]
chat-manager-entity-say-wrap-message = [BubbleHeader][bold][Name]{$entityName}[/Name][/bold][/BubbleHeader] {$verb}，[font={$fontType} size={$fontSize}]"[BubbleContent]{$message}[/BubbleContent]"[/font]
chat-manager-entity-say-bold-wrap-message = [BubbleHeader][bold][Name]{$entityName}[/Name][/bold][/BubbleHeader] {$verb}，[font={$fontType} size={$fontSize}]"[BubbleContent][bold]{$message}[/bold][/BubbleContent]"[/font]

chat-manager-entity-whisper-wrap-message = [font size=11][italic][BubbleHeader][Name]{$entityName}[/Name][/BubbleHeader] 耳语道，"[BubbleContent]{$message}[/BubbleContent]"[/italic][/font]
chat-manager-entity-whisper-unknown-wrap-message = [font size=11][italic][BubbleHeader]某人[/BubbleHeader] 耳语道，"[BubbleContent]{$message}[/BubbleContent]"[/italic][/font]

# 此处未使用 THE()，因为如果传入 nameOverride，实体和其名称可能在技术上是分离的...
chat-manager-entity-me-wrap-message = [italic]{ PROPER($entity) ->
    *[false] {$entityName} {$message}[/italic]
     [true] {CAPITALIZE($entityName)} {$message}[/italic]
    }

chat-manager-entity-looc-wrap-message = LOOC：[bold]{$entityName}：[/bold] {$message}
chat-manager-send-ooc-wrap-message = OOC：[bold]{$playerName}：[/bold] {$message}
chat-manager-send-ooc-patron-wrap-message = OOC：[bold][color={$patronColor}]{$playerName}[/color]：[/bold] {$message}

chat-manager-send-dead-chat-wrap-message = {$deadChannelName}：[bold][BubbleHeader]{$playerName}[/BubbleHeader]：[/bold] [BubbleContent]{$message}[/BubbleContent]
chat-manager-send-admin-dead-chat-wrap-message = {$adminChannelName}：[bold]([BubbleHeader]{$userName}[/BubbleHeader])：[/bold] [BubbleContent]{$message}[/BubbleContent]
chat-manager-send-admin-chat-wrap-message = {$adminChannelName}：[bold]{$playerName}：[/bold] {$message}
chat-manager-send-admin-announcement-wrap-message = [bold]{$adminChannelName}：{$message}[/bold]

chat-manager-send-hook-ooc-wrap-message = OOC：[bold](D){$senderName}：[/bold] {$message}
chat-manager-send-hook-admin-wrap-message = 管理员：[bold](D){$senderName}：[/bold] {$message}

chat-manager-dead-channel-name = 亡者
chat-manager-admin-channel-name = 管理员

chat-manager-rate-limited = 您发送消息过于频繁！
chat-manager-rate-limit-admin-announcement = 频率限制警告：{ $player }

## 聊天发言动词

chat-speech-verb-suffix-exclamation = ！
chat-speech-verb-suffix-exclamation-strong = ！！
chat-speech-verb-suffix-question = ？
chat-speech-verb-suffix-stutter = -
chat-speech-verb-suffix-mumble = ……

chat-speech-verb-name-none = 无
chat-speech-verb-name-default = 默认
chat-speech-verb-default = 说道
chat-speech-verb-name-exclamation = 感叹
chat-speech-verb-exclamation = 感叹道
chat-speech-verb-name-exclamation-strong = 大喊
chat-speech-verb-exclamation-strong = 大喊道
chat-speech-verb-name-question = 询问
chat-speech-verb-question = 问道
chat-speech-verb-name-stutter = 口吃
chat-speech-verb-stutter = 结巴地说
chat-speech-verb-name-mumble = 喃喃
chat-speech-verb-mumble = 喃喃道

chat-speech-verb-name-arachnid = 蛛形类
chat-speech-verb-insect-1 = 嘁嘁作响
chat-speech-verb-insect-2 = 嗡嗡作声
chat-speech-verb-insect-3 = 咔哒咔哒

chat-speech-verb-name-moth = 飞蛾
chat-speech-verb-winged-1 = 扑扑翅膀
chat-speech-verb-winged-2 = 拍动翅膀
chat-speech-verb-winged-3 = 嗡嗡振翅

chat-speech-verb-name-slime = 史莱姆
chat-speech-verb-slime-1 = 哗啦哗啦
chat-speech-verb-slime-2 = 咕噜咕噜
chat-speech-verb-slime-3 = 慢慢渗出

chat-speech-verb-name-plant = 迪奥纳
chat-speech-verb-plant-1 = 沙沙作响
chat-speech-verb-plant-2 = 轻轻摇曳
chat-speech-verb-plant-3 = 嘎吱嘎吱

chat-speech-verb-name-robotic = 机械音
chat-speech-verb-robotic-1 = 陈述道
chat-speech-verb-robotic-2 = 嘟嘟作声
chat-speech-verb-robotic-3 = 嘟声回应

chat-speech-verb-name-reptilian = 爬行类
chat-speech-verb-reptilian-1 = 嘶嘶作声
chat-speech-verb-reptilian-2 = 哼哼着
chat-speech-verb-reptilian-3 = 喷鼻息

chat-speech-verb-name-skeleton = 骷髅
chat-speech-verb-skeleton-1 = 骨头咯咯作响
chat-speech-verb-skeleton-2 = 咔嗒咔嗒
chat-speech-verb-skeleton-3 = 咬牙切齿

chat-speech-verb-name-vox = 沃克斯
chat-speech-verb-vox-1 = 尖声叫道
chat-speech-verb-vox-2 = 刺耳地叫着
chat-speech-verb-vox-3 = 嗄声说道

chat-speech-verb-name-canine = 犬类
chat-speech-verb-canine-1 = 汪汪叫道
chat-speech-verb-canine-2 = 汪汪作声
chat-speech-verb-canine-3 = 嗥叫道

chat-speech-verb-name-goat = 山羊
chat-speech-verb-goat-1 = 咩咩叫道
chat-speech-verb-goat-2 = 哼哼道
chat-speech-verb-goat-3 = 哭嚎道

chat-speech-verb-name-small-mob = 小鼠
chat-speech-verb-small-mob-1 = 吱吱叫道
chat-speech-verb-small-mob-2 = 哔哔作声

chat-speech-verb-name-large-mob = 鲤鱼
chat-speech-verb-large-mob-1 = 咆哮道
chat-speech-verb-large-mob-2 = 低吼道

chat-speech-verb-name-monkey = 猴子
chat-speech-verb-monkey-1 = 吱吱喳喳
chat-speech-verb-monkey-2 = 尖叫道

chat-speech-verb-name-cluwne = 克鲁恩

chat-speech-verb-name-parrot = 鹦鹉
chat-speech-verb-parrot-1 = 嘎嘎叫道
chat-speech-verb-parrot-2 = 啾啾作声
chat-speech-verb-parrot-3 = 啁啾道

chat-speech-verb-cluwne-1 = 咯咯笑道
chat-speech-verb-cluwne-2 = 哈哈大笑
chat-speech-verb-cluwne-3 = 笑道

chat-speech-verb-name-ghost = 幽灵
chat-speech-verb-ghost-1 = 抱怨道
chat-speech-verb-ghost-2 = 喘息道
chat-speech-verb-ghost-3 = 哼哼道
chat-speech-verb-ghost-4 = 喃喃道

chat-speech-verb-name-electricity = 电流
chat-speech-verb-electricity-1 = 噼啪作响
chat-speech-verb-electricity-2 = 嗡嗡作声
chat-speech-verb-electricity-3 = 刺耳嗡鸣

chat-speech-verb-vulpkanin-1 = 嗷嗷叫道
chat-speech-verb-vulpkanin-2 = 汪汪叫道
chat-speech-verb-vulpkanin-3 = 呜呜低吟
chat-speech-verb-vulpkanin-4 = 吠叫道
chat-speech-verb-vulpkanin = 狐犬族

chat-speech-verb-name-wawa = 娃娃
chat-speech-verb-wawa-1 = 吟道
chat-speech-verb-wawa-2 = 陈述道
chat-speech-verb-wawa-3 = 宣告道
chat-speech-verb-wawa-4 = 沉吟道
