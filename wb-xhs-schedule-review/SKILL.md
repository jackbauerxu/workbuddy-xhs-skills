---
name: wb-xhs-schedule-review
description: |
  Use when the user wants a Xiaohongshu posting calendar, weekly review board, or data-based next-step plan. Trigger phrases: "排期", "复盘", "30 天计划", "发了没数据", "weekly review", "content calendar", "XHS schedule". Do not use for first-draft editing or initial account positioning.
source_book: "《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》 文子"
source_chapter: "第七步 / 最后总结"
tags: [xiaohongshu, schedule, review]
related_skills: [wb-xhs-topic-bank, wb-xhs-humanize-compliance]
---

# 小红书排期与周复盘闭环

## R — 原文

> "排期 + 复盘，让它帮你记。"
>
> — 文子, X Article, 2026-07-06

## I — 方法论骨架

小红书冷启动不是单篇内容问题，而是连续发布和反馈问题。排期解决“今天发什么、什么时候发、发哪类”；复盘解决“数据说明了什么、下一周怎么改”。

文章建议把新号分成阶段：先让账号行为自然，再让平台识别标签，再逐渐稳定内容和商业转化。每周记录曝光、点击、点赞、收藏、评论、分享、涨粉等指标，并让 WorkBuddy 把结论写回记忆。

排期和复盘合在一起，才能把内容系统从灵感驱动变成数据驱动。

## A1 — 文章中的应用

### 案例 1: 30 天三阶段排期

- **问题**: 新手日更最大障碍不是没内容，而是不知道节奏。
- **方法论的使用**: 作者建议让 WorkBuddy 生成 30 天阶段计划和每周数据看板。
- **结论**: 发布前能知道当天任务，发布后能知道下周调整。
- **结果**: 选题库、数据和记忆文件形成闭环。

## A2 — 触发场景

### 用户会在什么情境下需要这个 skill?

1. 用户有选题库，但不知道如何排一周或一个月。
2. 用户发了几篇后不知道数据该怎么解释。
3. 用户想从冷启动进入稳定更新。
4. 用户想让 WorkBuddy 记住每周复盘规律。

### 语言信号

- "帮我做排期"
- "发了几篇没数据怎么办"
- "做个复盘表"
- "30 day XHS plan"
- "weekly content review"

### 与相邻 skill 的区分

- 与 `wb-xhs-topic-bank` 的区别: 选题库负责产生候选内容，本 skill 负责安排节奏和复盘数据。
- 与 `wb-xhs-humanize-compliance` 的区别: 去 AI 味处理单篇发布质量，本 skill 处理多篇内容的周期表现。

## E — 可执行步骤

1. **确定阶段**
   - 判断账号处于养号、标签识别、内容测试、稳定转化中的哪一阶段。
   - 完成标准: 每个阶段有不同发布目标。

2. **生成排期表**
   - 按周安排内容类型、发布时间、标题方向、制作任务。
   - 完成标准: 至少给出 7 天计划；需要时扩展到 30 天。

3. **建立数据看板**
   - 记录曝光、点击率、点赞、收藏、评论、分享、涨粉、发布时间、内容类型。
   - 完成标准: 用户能每周填表。

4. **复盘并回写记忆**
   - 判断最佳类型、最佳时间、失败原因、评论区新选题。
   - 完成标准: 输出下周 3-5 个具体调整动作，并建议写入账号档案。

## B — 边界

### 不要在以下情况使用

- 用户只有一个初稿要改，应使用去 AI 味 skill。
- 用户没有任何选题或定位，应先补前置 skill。

### 失败模式

- 排期过满，导致新手无法执行。
- 只看点赞，不看收藏、评论、点击和涨粉关系。
- 复盘只写感受，没有转成下周动作。

### 作者盲点

- 文章建议的阶段节奏不一定适合所有赛道。
- 小样本数据波动大，不能过早得出确定结论。

## 相关 skills

- depends-on: [wb-xhs-topic-bank, wb-xhs-humanize-compliance]
- contrasts-with: []
- composes-with: [wb-xhs-topic-bank, wb-xhs-account-profile]

## 审计信息

- **验证通过**: V1 ✓ / V2 ✓ / V3 ✓
- **测试通过率**: prompts prepared
- **蒸馏时间**: 2026-07-07

