### 职位封禁命令的本地化

cmd-roleban-desc = 封禁玩家的某个职位
cmd-roleban-help = 用法：roleban <名称或用户ID> <职位> <原因> [封禁时长（分钟），留空或填0为永久封禁]

## 补全结果提示
cmd-roleban-hint-1 = <名称或用户ID>
cmd-roleban-hint-2 = <职位>
cmd-roleban-hint-3 = <原因>
cmd-roleban-hint-4 = [封禁时长（分钟），留空或填0为永久封禁]
cmd-roleban-hint-5 = [严重程度]

cmd-roleban-hint-duration-1 = 永久
cmd-roleban-hint-duration-2 = 1天
cmd-roleban-hint-duration-3 = 3天
cmd-roleban-hint-duration-4 = 1周
cmd-roleban-hint-duration-5 = 2周
cmd-roleban-hint-duration-6 = 1个月


### 职位解封命令的本地化

cmd-roleunban-desc = 撤销玩家的职位封禁
cmd-roleunban-help = 用法：roleunban <职位封禁ID>
cmd-roleunban-unable-to-parse-id = 无法将{$id}解析为封禁ID整数。
                                   {$help}

## 补全结果提示
cmd-roleunban-hint-1 = <职位封禁ID>


### 职位封禁列表命令的本地化

cmd-rolebanlist-desc = 列出用户的职位封禁
cmd-rolebanlist-help = 用法：<名称或用户ID> [包含已解封]

## 补全结果提示
cmd-rolebanlist-hint-1 = <名称或用户ID>
cmd-rolebanlist-hint-2 = [包含已解封]


cmd-roleban-minutes-parse = {$time}不是有效的分钟数。\n{$help}
cmd-roleban-severity-parse = ${severity}不是有效的严重程度\n{$help}。
cmd-roleban-arg-count = 参数数量无效。
cmd-roleban-job-parse = 职位{$job}不存在。
cmd-roleban-name-parse = 无法找到该名称的玩家。
cmd-roleban-success = 已封禁{$target}的{$role}职位，原因：{$reason} {$length}。

cmd-roleban-inf = 永久
cmd-roleban-until =  直到{$expires}

# 部门封禁
cmd-departmentban-desc = 封禁玩家某个部门的所有职位
cmd-departmentban-help = 用法：departmentban <名称或用户ID> <部门> <原因> [封禁时长（分钟），留空或填0为永久封禁]
