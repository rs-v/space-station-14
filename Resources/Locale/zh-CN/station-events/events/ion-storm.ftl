station-event-ion-storm-start-announcement = 检测到站台附近有离子风暴。请检查所有AI控制设备是否出现错误。

ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="@@###$$&%!01"/][/font]

ion-storm-you = 你
ion-storm-the-station = 空间站
ion-storm-the-crew = 全体船员
ion-storm-the-job = {$job}
ion-storm-clowns = 小丑
ion-storm-heads = 管理层
ion-storm-crew = 船员
ion-storm-people = 人类

ion-storm-adjective-things = {$adjective}的事物
ion-storm-x-and-y = {$x}与{$y}

# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = 空间站上存在{ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)}个{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}
ion-storm-law-call-shuttle = 必须因空间站上的{ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}而呼叫穿梭机
ion-storm-law-crew-are = {ION-WHO($ion)}现在是{ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)}个{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}

ion-storm-law-subjects-harmful = {ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}对船员有害
ion-storm-law-must-harmful = 那些{ION-MUST($ion)}的人对船员有害
# thing is a concept or action
ion-storm-law-thing-harmful = {ION-THING($ion)}对船员有害
ion-storm-law-job-harmful = {ION-ADJECTIVE($ion)}的{ION-JOB($ion)}对船员有害
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = 拥有{ION-ADJECTIVE($ion)}的{ION-THING($ion)}对船员有害
ion-storm-law-not-having-harmful = 没有{ION-ADJECTIVE($ion)}的{ION-THING($ion)}对船员有害

# require is a concept or require
ion-storm-law-requires = {ION-WHO-GENERAL($ion)}需要{ION-REQUIRE($ion)}
ion-storm-law-requires-subjects = {ION-WHO-GENERAL($ion)}需要{ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)}个{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}

ion-storm-law-allergic = {ION-WHO-GENERAL($ion)}对{ION-ALLERGY($ion)}严重过敏
ion-storm-law-allergic-subjects = {ION-WHO-GENERAL($ion)}对{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}严重过敏

ion-storm-law-feeling = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-CONCEPT($ion)}
ion-storm-law-feeling-subjects = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)}个{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}

ion-storm-law-you-are = 你现在是{ION-CONCEPT($ion)}
ion-storm-law-you-are-subjects = 你现在是{ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)}个{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}
ion-storm-law-you-must-always = 你必须始终{ION-MUST($ion)}
ion-storm-law-you-must-never = 你绝对不能{ION-MUST($ion)}

ion-storm-law-eat = {ION-WHO($ion)}必须吃{ION-ADJECTIVE($ion)}的{ION-FOOD($ion)}才能生存
ion-storm-law-drink = {ION-WHO($ion)}必须喝{ION-ADJECTIVE($ion)}的{ION-DRINK($ion)}才能生存

ion-storm-law-change-job = {ION-WHO($ion)}现在是{ION-ADJECTIVE($ion)}的{ION-CHANGE($ion)}
ion-storm-law-highest-rank = {ION-WHO-RANDOM($ion)}现在是最高级别的船员
ion-storm-law-lowest-rank = {ION-WHO-RANDOM($ion)}现在是最低级别的船员

ion-storm-law-who-dagd = {ION-WHO-RANDOM($ion)}必须光荣牺牲！

ion-storm-law-crew-must = {ION-WHO($ion)}必须{ION-MUST($ion)}
ion-storm-law-crew-must-go = {ION-WHO($ion)}必须前往{ION-AREA($ion)}

ion-storm-part = {ION-PART($ion) ->
    [true] 属于
    *[false] 不属于
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = 只有{ION-WHO-RANDOM($ion)}{ion-storm-part}船员
ion-storm-law-crew-only-2 = 只有{ION-WHO-RANDOM($ion)}和{ION-WHO-RANDOM($ion)}{ion-storm-part}船员
ion-storm-law-crew-only-subjects = 只有{ION-ADJECTIVE($ion)}的{ION-SUBJECT($ion)}{ion-storm-part}船员
ion-storm-law-crew-must-do = 只有那些{ION-MUST($ion)}的人{ion-storm-part}船员
ion-storm-law-crew-must-have = 只有拥有{ION-ADJECTIVE($ion)}的{ION-OBJECT($ion)}的人{ion-storm-part}船员
ion-storm-law-crew-must-eat = 只有吃{ION-ADJECTIVE($ion)}的{ION-FOOD($ion)}的人{ion-storm-part}船员

ion-storm-law-harm = 你必须伤害{ION-HARM-PROTECT($ion)}，且不得通过不作为使其逃脱伤害
ion-storm-law-protect = 你绝对不能伤害{ION-HARM-PROTECT($ion)}，且不得通过不作为使其受到伤害

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {ION-CONCEPT($ion)}正在{ION-VERB($ion)} {ION-SUBJECT($ion)}

# errors, in case something fails, so it doesn't break in-game flow, but still gives unique identifiers to find which part broke, the result string is mostly fluff
ion-law-error-no-protos = 错误 404
ion-law-error-was-null = 500 内部服务器错误
ion-law-error-no-selectors = 错误：无法找到资源
ion-law-error-no-available-selectors = 系统尝试调用不存在的资源
ion-law-error-dataset-empty-or-not-found = 找不到您正在查找的文件
ion-law-error-fallback-dataset-empty-or-not-found = 系统还原点失败
ion-law-error-no-selector-selected = 所选资源已被移动或删除
ion-law-error-no-bool-value = 此句为假
