# 内容节奏与内容管线融合实施计划

## 1. 先锁定来源与测试契约

- 在 `FUSION_NOTES.md`、`README.md` 和 `INDEX.md` 登记 2026-07-29 的 X Article 来源。
- 在 `wb-xhs-schedule-review/test-prompts.json`、`wb-xhs-account-profile/test-prompts.json`、`wb-xhs-topic-bank/test-prompts.json` 先加入阶段节奏、库存、人设垂直和兜底模板用例。
- 用 JSON 解析和轻量断言确认新增用例能被测试读取。

## 2. 更新运行时技能

- 新增 `wb-xhs-schedule-review/references/content-rhythm-model.md`，集中保存四阶段模型、内容管线、增长循环、数据字段和调整规则。
- 更新排期技能，使其先判阶段、库存和增长目标，再生成排期；把比例视为起始假设并要求用数据调整。
- 更新账号档案与选题库，使人设垂直和问题—经验—观点模板可执行。

## 3. 更新项目知识与验收记录

- 更新 `DIGEST.md`、`BOOK_OVERVIEW.md`、`verified.md`、`PIPELINE_STATE.md`，记录新增方法单元与局限。
- 保留原有发布前审、视觉路由和视觉技能能力，不改变其所有权和边界。

## 4. 验证与交付

- 运行 JSON/frontmatter/结构检查、现有视觉聚焦检查和新增提示契约检查。
- 对本地 `/Users/g90/.codex/skills` 中的相关小红书技能同步更新并逐份比对。
- 检查 Git diff、工作区状态与远端分支；只提交本次相关文件，保留用户已有改动。
