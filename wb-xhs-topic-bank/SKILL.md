---
name: wb-xhs-topic-bank
description: |
  Use when the user has positioning and wants a reusable Xiaohongshu topic/title bank instead of asking AI to freely brainstorm. Trigger phrases: "选题库", "标题公式", "每天发什么", "批量选题", "XHS topic bank", "title formulas". Do not use before account positioning and target audience are known.
source_book: "《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》 文子"
source_chapter: "第四步 / 第五步"
tags: [xiaohongshu, topic-bank, title-formula]
related_skills: [wb-xhs-low-follower-pattern, wb-xhs-account-profile]
---

# 小红书七类选题库

## R — 原文

> "建选题库，别每天临时想。"
>
> — 文子, X Article, 2026-07-06

## I — 方法论骨架

选题焦虑来自每天从空白开始。文章的方法是把选题变成类型化生产：痛点、数字、对比、稀缺、共鸣、资源、反常识。

每种类型都有不同作用。痛点型负责命中问题，数字型负责制造清晰感，对比型负责凸显变化，稀缺型负责制造注意力，共鸣型负责建立信任，资源型负责提高收藏，反常识型负责制造转发理由。

WorkBuddy 不应该自由发挥，而应该在账号档案和对标公式约束下，按类型生成可筛选的选题。

## A1 — 文章中的应用

### 案例 1: 七类方向各出多个选题

- **问题**: 新手每天不知道发什么。
- **方法论的使用**: 作者让 WorkBuddy 按七种标题方向，每类生成多条选题。
- **结论**: 一次生成一组选题，而不是每天临时想一条。
- **结果**: 一周内容素材可以被快速筛出。

## A2 — 触发场景

### 用户会在什么情境下需要这个 skill?

1. 用户已经有定位，但每天不知道发什么。
2. 用户要为一个赛道批量生成 20-50 个选题。
3. 用户觉得 AI 标题太像营销号，需要用公式约束。
4. 用户想建立可持续内容栏目。

### 语言信号

- "帮我建选题库"
- "小红书标题公式"
- "一周发什么"
- "give me XHS topics"
- "topic bank"

### 与相邻 skill 的区分

- 与 `wb-xhs-low-follower-pattern` 的区别: 低粉爆款 skill 负责从样本拆公式；本 skill 负责用公式生产新题。
- 与 `wb-xhs-humanize-compliance` 的区别: 本 skill 只产出题目和标题，后者处理正文初稿。

## E — 可执行步骤

1. **读取账号约束**
   - 确认目标用户、赛道关键词、变现路径、人设语气、禁区。
   - 完成标准: 没有这些信息时先调用账号档案或定位 skill。

2. **建立七类公式**
   - 为痛点、数字、对比、稀缺、共鸣、资源、反常识各生成 3-5 个模板。
   - 完成标准: 每个模板包含可替换变量。

3. **批量生成选题**
   - 每类生成 5 个选题，附标题、目标读者、内容形态、收藏理由。
   - 完成标准: 至少 35 个候选题。

4. **筛选发布优先级**
   - 按变现相关度、用户痛感、制作难度、收藏价值打分。
   - 完成标准: 选出本周 3-5 个优先题。

## B — 边界

### 不要在以下情况使用

- 用户没有定位或目标人群。
- 用户需要完整正文，而不是选题和标题。

### 失败模式

- 让 AI 自由发挥标题，导致表达过度夸张。
- 只生成标题，不说明内容形态和读者收益。
- 选题全是热点，和账号变现路径无关。

### 作者盲点

- 七类公式能提高产出稳定性，但可能让账号表达变得模式化。
- 不同赛道可能需要补充其他类型，例如测评型、案例型、教程型。

## 相关 skills

- depends-on: [wb-xhs-account-profile, wb-xhs-low-follower-pattern]
- contrasts-with: []
- composes-with: [wb-xhs-humanize-compliance, wb-xhs-schedule-review]

## 审计信息

- **验证通过**: V1 ✓ / V2 ✓ / V3 ✓
- **测试通过率**: prompts prepared
- **蒸馏时间**: 2026-07-07

