### 交互消息

# 系统

## 尝试在没有所需餐具的情况下进食……但你必须拿着它
ingestion-you-need-to-hold-utensil = 你需要手持{INDEFINITE($utensil)} {$utensil}才能吃这个！

ingestion-try-use-is-empty = {CAPITALIZE(THE($entity))}是空的！
ingestion-try-use-wrong-utensil = 你不能用{INDEFINITE($utensil)} {$utensil}来{$verb}{THE($food)}。

ingestion-remove-mask = 你需要先摘下{$entity}。

## 进食失败

ingestion-you-cannot-ingest-any-more = 你无法再{$verb}更多了！
ingestion-other-cannot-ingest-any-more = {CAPITALIZE(SUBJECT($target))}无法再{$verb}更多了！

ingestion-cant-digest = 你无法消化{THE($entity)}！
ingestion-cant-digest-other = {CAPITALIZE(SUBJECT($target))}无法消化{THE($entity)}！

## 动作动词，不要与动词混淆

ingestion-verb-food = 吃
ingestion-verb-drink = 喝

# 可食用组件

-edible-satiated = { $satiated ->
    [true] {" "}你感觉不想再{ $verb }了。
  *[false] {""}
}

edible-nom = 咀嚼。{$flavors}{ -edible-satiated(satiated: $satiated, verb: "吃") }
edible-nom-other = 咀嚼。
edible-slurp = 咕噜。{$flavors}{ -edible-satiated(satiated: $satiated, verb: "喝") }
edible-slurp-other = 咕噜。
edible-swallow = 你吞下了{ THE($food) }。{ -edible-satiated(satiated: $satiated, verb: "吞咽") }
edible-gulp = 咽下。{$flavors}
edible-gulp-other = 咽下。

edible-has-used-storage = 你不能在里面还放着东西时{$verb}{ THE($food) }。

## 名词

edible-noun-edible = 可食用物
edible-noun-food = 食物
edible-noun-drink = 饮品
edible-noun-pill = 药片

## 动词

edible-verb-edible = 摄入
edible-verb-food = 吃
edible-verb-drink = 喝
edible-verb-pill = 吞

## 强制喂食

edible-force-feed = {CAPITALIZE(THE($user))}正在试图让你{$verb}某样东西！
edible-force-feed-success = {CAPITALIZE(THE($user))}强迫你{$verb}了某样东西！{$flavors}{ -edible-satiated(satiated: $satiated, verb: $verb) }
edible-force-feed-success-user = 你成功地喂给了{THE($target)}
