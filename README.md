# WorkBuddy XHS Skills

一套面向 Codex / Claude / WorkBuddy 等 Agent 的小红书冷启动与图文生产 Skills。

它把 X Article《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》中的方法，整理成 6 个可执行 skill，并进一步融合：

- yanliudreamer 小红书系列中的起号、个人 IP、内容验证和长期增长方法
- [dontbesilent2025/dbskill](https://github.com/dontbesilent2025/dbskill/tree/main) 中适合小红书运营的标题、内容诊断、对标、共鸣、开头、文风和复盘模块
- [ziguishian/xhs-visual-director-skill](https://github.com/ziguishian/xhs-visual-director-skill) 中适合图文内容的视觉导演方法

这不是一份文章摘要，而是一套可以被 Agent 调用的内容运营工作流。它覆盖小红书账号从 0 到稳定迭代的关键环节：定位、变现、对标、账号记忆、选题标题、初稿校准、图文拆页、视觉方向、发布排期和数据复盘。

原始 WorkBuddy 文章：

[https://x.com/Eejoylove/status/2074028317498601870](https://x.com/Eejoylove/status/2074028317498601870)

## 项目定位

`workbuddy-xhs-skills` 的目标不是“让 AI 多写几篇小红书文案”，而是把小红书冷启动变成一条可复用的 Agent 工作流。

它解决的是这类问题：

- 我适合做什么小红书账号？
- 我的账号以后靠什么变现？
- 我的个人经历、技能或产品怎么转成内容定位？
- 我该学哪些低粉高数据样本，而不是盲目看大号？
- 标题、封面、开头、正文和图文页数怎么协同？
- 为什么 AI 写出来不像真人，也不像我？
- 前 10 条、10-20 条、30 天分别该验证什么？
- 发完以后，数据结论怎么写回账号档案，变成下一轮内容输入？

最终产物是一组可以安装到 Codex / Claude / WorkBuddy 的 skills，让 Agent 在不同阶段调用不同模块，而不是每次从零解释你的账号。

## 一句话工作流

```text
变现倒推定位
-> 建立账号档案
-> 规划前 10 条系统画像内容
-> 生成选题库和标题
-> 校准初稿与图文结构
-> 学习低粉高数据样本
-> 用 10-20 条数据复盘定位
-> 把结论写回账号档案
```

## 什么时候用哪个 Skill

| 你现在的问题 | 推荐入口 |
|---|---|
| 不知道做什么账号，也不知道未来卖什么 | `wb-xhs-monetization-backsolve` |
| 每次让 AI 写内容，都不像你本人 | `wb-xhs-account-profile` |
| 不知道前 10 条怎么发 | `wb-xhs-schedule-review` |
| 缺选题、缺标题、缺封面钩子 | `wb-xhs-topic-bank` |
| 初稿太顺、太空、太像模板 | `wb-xhs-humanize-compliance` |
| 想拆低粉高数据样本为什么有效 | `wb-xhs-low-follower-pattern` |
| 想把一篇内容落成 3:4 封面和 6-8 页图文 | `wb-xhs-topic-bank` + `wb-xhs-humanize-compliance` |
| 发了 10-20 条，不知道要不要收敛定位 | `wb-xhs-schedule-review` + `wb-xhs-account-profile` |

## 项目解决什么问题

很多人做小红书时，第一反应是让 AI “帮我写一篇”或“帮我起 20 个标题”。问题是，如果没有账号定位、变现路径、用户需求、标题公式、内容验证和复盘机制，AI 很容易只给出一堆看起来像小红书、但不适合自己账号的内容。

这个项目把小红书冷启动拆成 7 个环节：

1. 先从变现和 offer 倒推账号定位。
2. 再建立账号档案，让 Agent 记住你是谁、服务谁、怎么说话。
3. 用前 10 条内容建立系统画像。
4. 用标题公式和用户底层需求建立选题库。
5. 把优先选题补充成封面钩子、主视觉方向和图文页数建议。
6. 对单篇初稿做人味化、结构诊断、图文拆页和发布前检查。
7. 用 10-20 条内容数据复盘定位，并把内容和视觉结论写回账号档案。

## 适合谁

- 想从 0 开始做小红书账号，但不知道先做什么的人
- 已经发了几篇内容，但定位、选题、标题和数据复盘都比较散的人
- 想把自己的主业、副业、咨询、课程、社群、产品或服务做成小红书个人 IP 的人
- 想用 Codex / Claude / WorkBuddy 建立长期内容生产流程的人
- 想把公开文章里的方法论沉淀成可复用 Agent Skills 的人
- 想把小红书图文从文字稿推进到封面、主视觉和多页图文结构的人

## 核心能力

| 模块 | Skill | 能做什么 |
|---|---|---|
| 变现定位 | `wb-xhs-monetization-backsolve` | 盘点可售卖资产、offer、目标用户、信任路径和变现方式，再倒推账号定位与视觉信任感 |
| 对标学习 | `wb-xhs-low-follower-pattern` | 找低粉高数据样本，用点击率、停留、互动、对标过滤、共鸣原因和视觉骨架拆结构 |
| 账号记忆 | `wb-xhs-account-profile` | 建立账号档案、个人语言样本、可信主张、内容边界、视觉身份和长期记忆 |
| 选题标题 | `wb-xhs-topic-bank` | 用七类选题公式、12 类标题触发器、五类用户需求和封面钩子生成选题库 |
| 初稿校准 | `wb-xhs-humanize-compliance` | 诊断 AI 初稿，检查单一核心机制、5 秒开头、真人感、图文拆页和发布表达 |
| 排期复盘 | `wb-xhs-schedule-review` | 制定前 10 条、7 天、30 天排期，并把内容生产和视觉生产放进复盘闭环 |

## 推荐工作流

### 从 0 开始做新号

```text
wb-xhs-monetization-backsolve
-> wb-xhs-account-profile
-> wb-xhs-schedule-review
-> wb-xhs-topic-bank
-> wb-xhs-humanize-compliance
-> wb-xhs-low-follower-pattern
-> wb-xhs-schedule-review
```

你可以这样对 Agent 说：

```text
我想从 0 做一个小红书账号，未来想通过咨询和课程变现。
请先帮我用 wb-xhs-monetization-backsolve 倒推定位。
```

### 已有账号重新梳理

```text
wb-xhs-schedule-review
-> wb-xhs-monetization-backsolve
-> wb-xhs-account-profile
-> wb-xhs-low-follower-pattern
-> wb-xhs-topic-bank
```

适合已经发过内容，但不知道为什么数据不稳定、粉丝不匹配、选题越来越散的账号。

### 单篇内容优化

```text
wb-xhs-topic-bank
-> wb-xhs-humanize-compliance
-> wb-xhs-low-follower-pattern
```

适合已经有一个主题或初稿，需要把标题、开头、正文结构和互动点调得更适合小红书。

## 6 个 Skills 详细介绍

### 1. `wb-xhs-monetization-backsolve`

小红书变现倒推账号定位。

适合这些问题：

- “我想做小红书，但不知道做什么赛道。”
- “我有技能、经验或产品，但不知道怎么变成账号定位。”
- “我该追热点快速起号，还是做长期个人 IP？”
- “我想以后卖课、咨询、社群或服务，账号应该怎么设计？”

它会输出：

- 可售卖资产清单
- offer 与信任路径
- 主变现路径和副变现路径
- 目标用户与内容承诺
- 一句话定位
- 5 类内容方向矩阵
- 视觉定位假设
- 10-20 条内容验证计划

### 2. `wb-xhs-low-follower-pattern`

低粉高数据内容结构分析。

适合这些问题：

- “帮我找低粉高数据对标。”
- “这些笔记为什么能火？”
- “我的笔记曝光还行，但收藏评论低，问题在哪？”
- “我能不能学习这个样本的结构？”

它会分析：

- 样本是否和你的变现路径相关
- 标题和封面承诺负责什么点击理由
- 开头三句如何制造停留
- 正文结构如何组织信息
- 评论、收藏、转发来自哪种用户动机
- 哪些结构能迁移到你的账号素材里
- 封面构图、主视觉、字体层级和页间节奏是否值得学习

### 3. `wb-xhs-account-profile`

账号档案和长期记忆。

适合这些问题：

- “让 Agent 记住我的账号定位。”
- “每次 AI 写出来都不像我。”
- “我想做个人 IP，但内容方向有点散。”
- “哪些生活内容能发，哪些会影响主线？”

它会沉淀：

- 账号定位卡
- 目标用户
- 信任资产
- 个人语言样本
- 可信主张清单
- 视觉身份规则
- 内容边界
- 主线话题与延展话题
- 数据日志和每周更新机制

### 4. `wb-xhs-topic-bank`

小红书选题库和标题公式。

适合这些问题：

- “帮我建一个选题库。”
- “我每天不知道发什么。”
- “给我 30 个小红书标题，但不要像营销号。”
- “这个标题好点，但正文能给用户带走什么？”

它会生成：

- 痛点、数字、对比、稀缺、共鸣、资源、反常识七类选题
- 12 类标题触发器标注
- 情感共鸣、见证成长、获得新知、学习提升、身份表达五类需求标注
- 标题五项检查
- 封面钩子、主视觉方向和页数建议
- 本周优先发布选题

标题检查包括：

- 是否 20 个中文字符以内
- 是否保留悬念
- 是否击中真实痛点
- 是否用了更大的用户词
- 是否至少包含 2 个张力元素

### 5. `wb-xhs-humanize-compliance`

小红书初稿校准与发布前检查。

适合这些问题：

- “这篇 AI 味太重。”
- “开头不抓人。”
- “内容很干，但好像没人想看完。”
- “帮我改得像真人一点。”
- “发布前检查一下表达。”

它会做：

- AI 味来源标注
- 内容四维诊断
- 单一核心机制审计
- 5 秒开头检查
- 真实经历、具体场景、前后对比补强
- 账号口吻校准
- 6-8 页图文结构
- 视觉可读性检查
- 发布前表达检查

重点不是把句子改得更华丽，而是让内容更像账号本人能说出口的话，并且更容易被点开、看完、收藏和评论。

### 6. `wb-xhs-schedule-review`

排期与周复盘闭环。

适合这些问题：

- “帮我排一个 30 天小红书计划。”
- “我是新号，前 10 条应该怎么发？”
- “我已经发了 12 条，帮我判断定位要不要收敛。”
- “本周复盘后，下周怎么调整？”

它会输出：

- 当前账号阶段判断
- 前 10 条系统画像内容
- 7 天或 30 天发布排期
- 单图/多页图文制作任务
- 视觉确认图和最终图制作节点
- 数据看板字段
- 10-20 条后的定位复盘
- 下周 3-5 个调整动作
- 需要写回账号档案的结论

## dbskill 提取了什么

本项目没有把小红书 skills 并入 dbskill，也没有依赖 dbskill 的运行入口。处理方式是：提取 dbskill 中适合小红书运营的判断模块，转译到现有 `wb-xhs-*` skills 里。

| dbskill 模块 | 提取内容 | 落到本项目 |
|---|---|---|
| `dbs-xhs-title` | 标题公式可追溯、标题触发器、20 字以内、保留悬念、真实痛点 | `wb-xhs-topic-bank` |
| `dbs-content` | 内容质量诊断、产品和 offer 先于内容、不要只堆干货 | `wb-xhs-humanize-compliance`, `wb-xhs-monetization-backsolve` |
| `dbs-benchmark` | 对标过滤：商业相关、机制可懂、可复用、少空谈赛道 | `wb-xhs-low-follower-pattern` |
| `dbs-resonate` | 单一核心机制、内容为什么让人想表达或转述 | `wb-xhs-humanize-compliance`, `wb-xhs-low-follower-pattern` |
| `dbs-spread` | 从样本反推传播原因 | `wb-xhs-low-follower-pattern`, `wb-xhs-topic-bank` |
| `dbs-hook` | 5 秒开头：话题、继续看的理由、可信证据 | `wb-xhs-humanize-compliance` |
| `dbs-ai-check` | 先诊断再改写，识别太顺、太满、太正确的 AI 文风 | `wb-xhs-humanize-compliance`, `wb-xhs-account-profile` |
| 状态记录思路 | 周度结论写回账号档案，成为下一轮实验输入 | `wb-xhs-schedule-review`, `wb-xhs-account-profile` |

详细说明见：

[DBSKILL_EXTRACTION_NOTES.md](./DBSKILL_EXTRACTION_NOTES.md)

## xhs-visual-director-skill 融合了什么

本项目参考 [ziguishian/xhs-visual-director-skill](https://github.com/ziguishian/xhs-visual-director-skill)，提取小红书图文视觉导演方法，并转译为现有内容运营 skills 的视觉交付字段。

| 视觉导演模块 | 提取内容 | 落到本项目 |
|---|---|---|
| 10 问澄清 | 完整图文项目前先明确目标、受众、观点、素材、风格、转化 | `wb-xhs-humanize-compliance`, `wb-xhs-schedule-review` |
| 风格判断报告 | 内容类型、传播目标、读者情绪、信息密度、推荐风格 | `wb-xhs-topic-bank`, `wb-xhs-account-profile` |
| 8 页结构 | 封面、痛点、认知、方法、案例、操作、总结、引导 | `wb-xhs-humanize-compliance`, `wb-xhs-schedule-review` |
| 统一视觉母版 | 1080x1440px、3:4、边距、网格、字体、色彩、组件语言 | `wb-xhs-account-profile`, `wb-xhs-schedule-review` |
| 视觉审查 | 封面冲击、手机端可读、信息层级、风格统一、避免 PPT 感 | `wb-xhs-humanize-compliance`, `wb-xhs-low-follower-pattern` |

详细说明见：

[VISUAL_DIRECTOR_FUSION_NOTES.md](./VISUAL_DIRECTOR_FUSION_NOTES.md)

## 和相关项目的关系

这个仓库保持独立，不把其他项目整包并入。

| 项目 | 本仓库如何使用 |
|---|---|
| WorkBuddy 原文 | 作为冷启动主线：变现倒推、账号档案、选题、改稿、排期复盘 |
| yanliudreamer 小红书系列 | 补强起号、个人 IP、10-20 条验证、长期主义和爆款底层需求 |
| dbskill | 只提取适合小红书的标题、内容诊断、对标、共鸣、开头、文风和状态记录模块 |
| xhs-visual-director-skill | 只提取视觉导演方法，转成选题、改稿、账号档案和排期里的视觉交付字段 |

如果你只想做小红书账号冷启动，用本仓库即可。  
如果你只想做单次图片生成或完整视觉制图，可以继续调用独立的视觉导演或图像生成工具。

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

## 使用示例

安装后，你可以直接用自然语言触发对应 skill。

```text
我想做小红书，但不知道选什么赛道，也不知道以后怎么变现。
```

```text
帮我建一个小红书账号档案，让 WorkBuddy 以后记住我的定位和语气。
```

```text
我的定位是给职场新人教 AI 写作，帮我建一个小红书选题库。
```

```text
这篇小红书初稿 AI 味太重，帮我改得像真人一点。
```

```text
我已经发了 12 条，数据有起伏，帮我判断要不要收敛定位。
```

## 目录结构

```text
.
├── README.md
├── INDEX.md
├── BOOK_OVERVIEW.md
├── DIGEST.md
├── FUSION_NOTES.md
├── DBSKILL_EXTRACTION_NOTES.md
├── VISUAL_DIRECTOR_FUSION_NOTES.md
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
- `FUSION_NOTES.md`：融合 yanliudreamer 系列和 dbskill 模块后的方法补丁说明
- `DBSKILL_EXTRACTION_NOTES.md`：从 dbskill 提取并转译到小红书 skills 的模块说明
- `VISUAL_DIRECTOR_FUSION_NOTES.md`：从 xhs-visual-director-skill 提取并转译到现有 skills 的视觉模块说明
- `GLOSSARY.md`：术语表
- `verified.md`：通过三重验证的方法论单元
- `candidates/`：候选方法论单元
- `rejected/`：未独立成 skill 的候选及原因

## 来源

核心来源：

- 原文：X Article《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》
- 链接：[https://x.com/Eejoylove/status/2074028317498601870](https://x.com/Eejoylove/status/2074028317498601870)
- 作者：文子 (@Eejoylove)
- 发布时间：2026-07-06

融合来源：

- [小红书起号(上)：从0-20万粉，有关流量，账号定位，涨粉，选题](https://x.com/yanliudreamer/status/2063422060123320432)
- [小红书运营 (下)：0-20万粉，有关变现，个人IP，长期主义](https://x.com/yanliudreamer/status/2064531701783732656)
- [0基础小红书起号教程(上)｜从0到第一波流量（保姆级）](https://x.com/yanliudreamer/status/2071450551808938105)
- [0基础小红书教程(中)｜爆款内容怎么做+真实案例！](https://x.com/yanliudreamer/status/2073292022316966217)
- [dontbesilent2025/dbskill](https://github.com/dontbesilent2025/dbskill/tree/main)
- [ziguishian/xhs-visual-director-skill](https://github.com/ziguishian/xhs-visual-director-skill)

本仓库只保留短引用、方法论重写和可执行工作流，不包含原文全文。

## 免责声明

这些 skills 是对公开文章中方法论的再组织和工程化表达，不代表原作者、WorkBuddy 或相关平台官方立场。平台规则、工具能力和账号增长结果都可能变化，请结合当前实际情况使用。
