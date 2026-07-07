---
name: wb-xhs-account-profile
description: |
  Use when the user wants WorkBuddy or another agent to remember an account's positioning, voice, boundaries, data, and content rules across sessions. Trigger phrases: "账号档案", "记住我的账号", "写入记忆", "brand profile", "account memory", "style guide". Do not use for one-off post drafting unless profile data is missing.
source_book: "《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》 文子"
source_chapter: "第三步"
tags: [xiaohongshu, memory, account-profile]
related_skills: [wb-xhs-monetization-backsolve, wb-xhs-topic-bank]
---

# WorkBuddy 账号档案构建

## R — 原文

> "让它认识你。"
>
> — 文子, X Article, 2026-07-06

## I — 方法论骨架

WorkBuddy 的价值不只是回答一次问题，而是长期协作。长期协作的前提是它知道账号是谁、说什么、不说什么、为什么可信、已经验证过什么。

账号档案要把定位、变现模式、人设语气、内容边界、已有数据和对标公式写成可读取文件。这样每次生成选题、标题、正文或复盘时，Agent 不必重新猜测用户身份。

一个好账号档案既是风格指南，也是边界文件和运营日志。

## A1 — 文章中的应用

### 案例 1: 文科生使用 AI 的示范定位

- **问题**: 作者需要示范一个可被 WorkBuddy 理解的账号身份。
- **方法论的使用**: 用“账号定位、变现模式、人设调性、内容边界、已有数据”等字段描述账号。
- **结论**: WorkBuddy 能在后续生成中保持更稳定的表达。
- **结果**: 减少反复修改“这不像我”的成本。

## A2 — 触发场景

### 用户会在什么情境下需要这个 skill?

1. 用户每次让 AI 写内容都觉得不像自己。
2. 用户想把账号定位和语气保存成长期上下文。
3. 用户正在搭建一人公司或个人 IP 内容系统。
4. 用户已有数据和踩坑记录，想让 Agent 下次自动参考。

### 语言信号

- "帮我建账号档案"
- "让 WorkBuddy 记住我的定位"
- "这个文案不像我"
- "account profile"
- "brand memory"

### 与相邻 skill 的区分

- 与 `wb-xhs-monetization-backsolve` 的区别: 定位 skill 产出方向，本 skill 把方向固化成记忆文件。
- 与 `wb-xhs-topic-bank` 的区别: 本 skill 定义账号约束，选题库在这些约束内生产题目。

## E — 可执行步骤

1. **收集基础字段**
   - 询问账号定位、目标用户、变现模式、人设关键词、内容边界、已有数据。
   - 完成标准: 每个字段至少有一句明确描述。

2. **写成账号档案**
   - 输出 `账号档案.md`，包含定位卡、语气规则、禁区、内容栏目、对标公式、数据日志。
   - 完成标准: 另一个 Agent 只读此文件也能判断该不该写某类内容。

3. **生成记忆写入指令**
   - 给出可直接对 WorkBuddy 使用的指令，例如“请记住以下账号信息，并在后续内容生成中自动参考”。
   - 完成标准: 用户可复制使用。

4. **建立更新机制**
   - 每周把表现最好的内容、失败原因、禁用表达加入档案。
   - 完成标准: 档案不是静态简介，而是可迭代资产。

## B — 边界

### 不要在以下情况使用

- 用户只需要临时写一条与账号无关的文案。
- 用户还没有基本定位，应先用变现倒推 skill。

### 失败模式

- 档案只写口号，不写具体边界。
- 只写“温柔、专业、真诚”等形容词，没有可判断示例。
- 建完档案后不更新数据和经验。

### 作者盲点

- WorkBuddy 的实际记忆机制可能随版本变化，文件路径和读取方式需要按当前工具确认。
- 用户如果没有持续记录习惯，档案会很快失真。

## 相关 skills

- depends-on: [wb-xhs-monetization-backsolve]
- contrasts-with: []
- composes-with: [wb-xhs-topic-bank, wb-xhs-humanize-compliance, wb-xhs-schedule-review]

## 审计信息

- **验证通过**: V1 ✓ / V2 ✓ / V3 ✓
- **测试通过率**: prompts prepared
- **蒸馏时间**: 2026-07-07

