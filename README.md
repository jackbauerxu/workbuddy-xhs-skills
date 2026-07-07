# WorkBuddy XHS Skills

把 X Article《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》蒸馏成的一组可执行 Agent Skills。

这不是文章摘要，而是一套面向 Codex / Claude 等 Agent 的小红书冷启动工作流：从变现定位、对标拆解、账号档案、选题库、初稿校准到排期复盘，每个环节都拆成了独立可调用的 skill。

原文链接：[https://x.com/Eejoylove/status/2074028317498601870](https://x.com/Eejoylove/status/2074028317498601870)

## 适合谁

- 想从 0 开始做小红书账号，但不知道先做什么的人
- 想用 WorkBuddy / Codex / Claude 建立内容生产流程的人
- 想把小红书运营方法沉淀成可复用 Agent Skills 的人
- 想学习如何用 `cangjie-skill` 把长文蒸馏成 skills 的人

## Skills

| Skill | 用途 |
|---|---|
| `wb-xhs-monetization-backsolve` | 从变现路径倒推账号定位、目标用户、内容方向和边界 |
| `wb-xhs-low-follower-pattern` | 找低粉爆款样本，拆标题、开头、结构和标签 |
| `wb-xhs-account-profile` | 为 WorkBuddy 建立账号档案和长期记忆 |
| `wb-xhs-topic-bank` | 用七类标题公式建立可持续选题库 |
| `wb-xhs-humanize-compliance` | 对 AI 初稿做人味化和发布前表达检查 |
| `wb-xhs-schedule-review` | 制定发布排期，并用每周数据复盘下一轮内容 |

推荐顺序：

```text
变现倒推 → 低粉爆款拆解 → 账号档案 → 选题库 → 初稿校准 → 排期复盘
```

## 安装

复制 6 个 skill 目录到 Codex skills 目录：

```bash
cp -R wb-xhs-* ~/.codex/skills/
```

然后重启 Codex。

如果你使用 Claude Code，也可以复制到：

```bash
cp -R wb-xhs-* ~/.claude/skills/
```

## 目录结构

```text
.
├── README.md
├── INDEX.md
├── BOOK_OVERVIEW.md
├── DIGEST.md
├── GLOSSARY.md
├── verified.md
├── candidates/
├── rejected/
├── wb-xhs-monetization-backsolve/
├── wb-xhs-low-follower-pattern/
├── wb-xhs-account-profile/
├── wb-xhs-topic-bank/
├── wb-xhs-humanize-compliance/
└── wb-xhs-schedule-review/
```

每个 skill 目录包含：

- `SKILL.md`：可被 Agent 调用的技能说明
- `test-prompts.json`：用于后续演化和回归测试的提示词样例

## 产物说明

- `INDEX.md`：技能总览、依赖关系和推荐使用顺序
- `BOOK_OVERVIEW.md`：对原文章的方法论理解和批判
- `DIGEST.md`：面向读者的精华说明
- `GLOSSARY.md`：术语表
- `verified.md`：通过三重验证的方法论单元
- `candidates/`：候选方法论单元
- `rejected/`：未独立成 skill 的候选及原因

## 来源

- 原文：X Article《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》
- 链接：[https://x.com/Eejoylove/status/2074028317498601870](https://x.com/Eejoylove/status/2074028317498601870)
- 作者：文子 (@Eejoylove)
- 发布时间：2026-07-06

本仓库只保留短引用、方法论重写和可执行工作流，不包含原文全文。

## 生成方法

本项目使用 `cangjie-skill` 的 RIA-TV++ 流程生成：

1. 阶段 0：整体理解
2. 阶段 1：候选方法论单元提取
3. 阶段 1.5：三重验证
4. 阶段 2：RIA++ 构造 skill
5. 阶段 3：建立 skill 关系
6. 阶段 4：生成测试 prompts
7. 阶段 5：交付为可安装 skill 目录

## 免责声明

这些 skills 是对公开文章中方法论的再组织和工程化表达，不代表原作者或 WorkBuddy 官方立场。平台规则、工具能力和账号增长结果都可能变化，请结合当前实际情况使用。
