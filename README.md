# WorkBuddy XHS Skills

一套面向 Codex / Claude / WorkBuddy 等 Agent 的小红书冷启动与图文生产 Skills。

它把 X Article《别不信！ WorkBuddy 就可以把你的小红书从0粉干到1000》中的方法，整理成 10 个可执行 skill，并进一步融合：

- yanliudreamer 小红书系列中的起号、个人 IP、内容验证和长期增长方法
- [dontbesilent2025/dbskill](https://github.com/dontbesilent2025/dbskill/tree/main) 中适合小红书运营的标题、内容诊断、对标、共鸣、开头、文风和复盘模块
- [ziguishian/xhs-visual-director-skill](https://github.com/ziguishian/xhs-visual-director-skill) 中适合图文内容的视觉导演方法
- [ponyodong2026/ponyo-cover-anchor-system](https://github.com/ponyodong2026/ponyo-cover-anchor-system)、[helloianneo/ian-xiaohei-illustrations](https://github.com/helloianneo/ian-xiaohei-illustrations)、[op7418/guizang-material-illustration](https://github.com/op7418/guizang-material-illustration) 中可迁移的封面锚点、黑白叙事和模块化素材组织方法

这不是一份文章摘要，而是一套可以被 Agent 调用的内容运营工作流。它覆盖小红书账号从 0 到稳定迭代的关键环节：定位、变现、对标、账号记忆、选题标题、初稿校准、图文拆页、视觉路由与图文视觉交付、发布排期和数据复盘。

## 本次更新包含什么

原有 6 个内容运营技能，覆盖从冷启动到复盘的完整闭环：

- **变现倒推定位**：从可售卖资产、目标用户和信任路径反推账号方向。
- **低粉爆款对标**：拆解低粉高数据内容的标题、封面、停留和互动结构。
- **账号档案与记忆**：沉淀定位、口吻、可信主张、内容边界和视觉身份。
- **选题库与标题公式**：持续生成能落地的选题、标题和封面钩子。
- **初稿校准**：减少 AI 味，强化开头、结构、真人感和发布表达。
- **排期与数据复盘**：规划前 10 条、30 天内容节奏，并将有效结论写回下一轮生产。

在此基础上，新增 4 个视觉生产技能，把“有一篇内容”推进到“能交付图文视觉”：

- **视觉路由**：根据请求分流到封面、黑白叙事插图或模块化素材；缺少封面标题、来源或素材时，会先做最小且真实的预检。
- **3:4 封面锚点**：用已确认的证据、主体、对照或文字承诺做手机端可读的封面，不把未经证实的数字、案例或结果画成事实。
- **黑白叙事插图**：为职场、成长和方法类内容提供简洁的人物动作与情绪表达，保留标题留白。
- **模块化素材插画**：把栏目、流程和工具内容拆成可重复使用的图标、物件、关系与页面组件。

这些视觉技能与原有的选题、改稿、排期和复盘串联：有真实图像工具时记录生成、保存和 QA；没有调用工具时明确标记 `not_called`，不会虚构图片已经交付。

### 视觉生产示例

<p align="center">
  <img src="./assets/visual-examples/cover-anchor-example.png" width="31%" alt="3:4 封面锚点示例：忙不是成长" />
  <img src="./assets/visual-examples/xiaohei-narrative-example.png" width="31%" alt="黑白叙事插图示例：下班后学习" />
  <img src="./assets/visual-examples/material-illustration-example.png" width="31%" alt="模块化素材插画示例：六类可复用组件" />
</p>

从左到右分别对应：`wb-xhs-cover-anchor`、`wb-xhs-xiaohei-illustration`、`wb-xhs-material-illustration`。它们都是仓库内原创示例，用于说明视觉交付方向，不代表真实数据、案例或客户成果。

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
-> 视觉路由与封面/插图/素材交付
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
| 要一张真实、可读的 3:4 封面 | `wb-xhs-visual-router` → `wb-xhs-cover-anchor` |
| 要黑白手绘叙事插图 | `wb-xhs-visual-router` → `wb-xhs-xiaohei-illustration` |
| 要一套可复用栏目素材 | `wb-xhs-visual-router` → `wb-xhs-material-illustration` |
| 发了 10-20 条，不知道要不要收敛定位 | `wb-xhs-schedule-review` + `wb-xhs-account-profile` |

## 项目解决什么问题

很多人做小红书时，第一反应是让 AI “帮我写一篇”或“帮我起 20 个标题”。问题是，如果没有账号定位、变现路径、用户需求、标题公式、内容验证和复盘机制，AI 很容易只给出一堆看起来像小红书、但不适合自己账号的内容。

这个项目把小红书冷启动拆成 9 个环节：

1. 先从变现和 offer 倒推账号定位。
2. 再建立账号档案，让 Agent 记住你是谁、服务谁、怎么说话。
3. 用前 10 条内容建立系统画像。
4. 用标题公式和用户底层需求建立选题库。
5. 把优先选题补充成封面钩子、主视觉方向和图文页数建议。
6. 对单篇初稿做人味化、结构诊断、图文拆页和发布前检查。
7. 用视觉路由把内容交给封面、黑白叙事插图或模块化素材专家；在生成前检查标题、证据与事实边界。
8. 用低粉高数据样本拆解可迁移的标题、封面、结构和互动机制，再回到自己的内容验证。
9. 用 10-20 条内容数据复盘定位，并把内容和视觉结论写回账号档案。

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
| 视觉分流 | `wb-xhs-visual-router` | 为封面、黑白手绘和模块化素材选择专家，并保留真实运行状态 |
| 封面锚点 | `wb-xhs-cover-anchor` | 用已确认事实做可读、可检验的 3:4 封面 |
| 黑白叙事插图 | `wb-xhs-xiaohei-illustration` | 为泛化主题制作简洁黑白手绘叙事插图 |
| 模块化素材 | `wb-xhs-material-illustration` | 为栏目、流程和图文页建立可复用素材单元 |

## 技能融合与更新摘要

下面按技能说明“融合了什么、最后落成什么能力”。这是方法的转译关系，不是把来源仓库、图片、模板或提示词整包复制进来。

### 1. `wb-xhs-monetization-backsolve`

融合：

- WorkBuddy 的变现路径倒推、账号定位和内容方向。
- yanliudreamer 的 timing 判断、个人 IP 路线、长期表达能力和 10-20 条验证思路。
- 视觉导演的“不同信任路径需要不同视觉信任感”判断。

核心变化：不只问“怎么变现”，还要回答“为什么现在做、为什么是你、你能否长期讲下去，以及需要建立什么视觉信任”。

### 2. `wb-xhs-low-follower-pattern`

融合：

- WorkBuddy 的低粉高数据样本拆解。
- yanliudreamer 的点击率 × 停留时长 × 互动率，以及五类用户底层需求。
- dbskill 的对标过滤、传播原因和共鸣机制判断。
- 视觉导演的封面构图、主视觉、页间节奏和手机端可读性检查。

核心变化：不再只模仿样本形式，而是判断它究竟在哪个数据环节有效、哪些内容和视觉机制可以迁移。

### 3. `wb-xhs-account-profile`

融合：

- WorkBuddy 的账号档案和长期记忆。
- yanliudreamer 的信任资产、个人 IP 故事、人设垂直和评论/私信反馈写回。
- dbskill 的个人语言样本、可信证据和 AI 文风校准。
- 视觉导演的画幅、色彩、字体、组件和禁用反模式组成的视觉身份。

核心变化：账号档案从静态风格说明升级为可持续更新的“信任名片 + 内容与视觉记忆”。

### 4. `wb-xhs-topic-bank`

融合：

- WorkBuddy 的选题矩阵和标题公式。
- yanliudreamer 的五类用户需求与发帖前三问。
- dbskill 的标题触发器、标题硬检和可追溯的触发原因。
- 视觉导演的封面钩子、主视觉方向、信息密度和页数建议。

核心变化：选题不只是生成标题，而是同时给出用户需求、内容承诺和可以交给视觉生产的 Brief。

### 5. `wb-xhs-humanize-compliance`

融合：

- WorkBuddy 的初稿校准和发布前检查。
- dbskill 的钩子、单一核心机制、先诊断再改写和 5 秒开头。
- 视觉导演的 6-8 页图文结构、信息层级和手机端可读性。

核心变化：去 AI 味不只是口语化，而是让一篇内容同时更像真人、更容易被看完，也能被清楚地拆成图文页。

### 6. `wb-xhs-schedule-review`

融合：

- WorkBuddy 的前 10 条、7 天、30 天排期和复盘闭环。
- yanliudreamer 的系统画像、10-20 条验证和爆款后顺势加深。
- dbskill 的状态记录与结论写回机制。
- 视觉导演的母版、视觉确认图、最终图和视觉复盘节点。

核心变化：排期不只安排发布时间，也安排内容和视觉生产；它只保存视觉约束，不替代视觉路由或图片交付。

### 7. `wb-xhs-visual-router`

融合：

- 本项目已有的选题、改稿、排期所产出的标题、页面和视觉约束。
- 本次新增的共用 Visual Brief、事实边界、真实运行状态和 QA 记录约定。

核心变化：视觉请求有了唯一入口；它先补齐封面标题、证据和事实边界，再分流给对应专家，不把“尚未调用图片工具”写成已经交付图片。

### 8. `wb-xhs-cover-anchor`

融合：

- `ponyodong2026/ponyo-cover-anchor-system` 的四类可迁移封面锚点：证据、主体、对照、文字承诺。
- 小红书 3:4、手机端可读、标题优先和事实中性兜底规则。

核心变化：封面以已确认事实为锚；缺少证据时保留可信标题与构图骨架，不把未经证实的数据、案例或结果画成事实。

### 9. `wb-xhs-xiaohei-illustration`

融合：

- `helloianneo/ian-xiaohei-illustrations` 的简洁黑白叙事方向。
- 小红书内容中的人物动作、情绪关系、标题留白和 3:4 页面用途。

核心变化：把抽象的职场、成长和方法主题转成一眼可读的叙事动作；只使用非特定人物与原创构图，不复制第三方角色或成图。

### 10. `wb-xhs-material-illustration`

融合：

- `op7418/guizang-material-illustration` 的模块化素材组织思路。
- 栏目、流程、工具图文中可复用的物件、步骤、关系、角标和说明组件。

核心变化：把一次性配图变成可复用的组件系统；同时需要“素材 + 封面”时，先确认封面精确标题，再分别完成两种交付。

## 推荐工作流

### 从 0 开始做新号

```text
wb-xhs-monetization-backsolve
-> wb-xhs-account-profile
-> wb-xhs-schedule-review
-> wb-xhs-topic-bank
-> wb-xhs-humanize-compliance
-> wb-xhs-visual-router
-> wb-xhs-cover-anchor / wb-xhs-xiaohei-illustration / wb-xhs-material-illustration
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
-> wb-xhs-visual-router（需要封面、插图或素材时）
-> wb-xhs-low-follower-pattern
```

适合已经有一个主题或初稿，需要把标题、开头、正文结构和互动点调得更适合小红书。

### 内容交付为图文视觉

```text
wb-xhs-topic-bank / wb-xhs-humanize-compliance
-> wb-xhs-visual-router
-> wb-xhs-cover-anchor（封面）
   / wb-xhs-xiaohei-illustration（黑白叙事插图）
   / wb-xhs-material-illustration（模块化素材）
-> wb-xhs-schedule-review（制作与复盘约束）
```

路由器先确认封面精确标题、可证实的主张与安全默认值；只有真实调用图片工具时才会记录生成、保存和 QA。没有调用时，交付会明确标为 `not_called`。

## 10 个 Skills 详细介绍

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

### 7. `wb-xhs-visual-router`

视觉请求的唯一入口，负责把一篇内容分流成正确的视觉交付。

适合这些问题：

- “为这篇内容做一张小红书封面。”
- “给这篇职场文章配黑白插图。”
- “做一套栏目素材，再做封面。”

它会先检查封面精确标题、可证实主张、主体证据和 3:4 画布要求；无来源的百分比、案例或结果只会被改写为经用户授权的定性表达。然后把任务交给封面、黑白插图或素材专家，并记录真实的生成、保存和 QA 状态。

### 8. `wb-xhs-cover-anchor`

3:4 小红书封面设计技能。

它会在可检视证据裁切、已授权主体、已确认前后对照和文字承诺四种锚点中选择一种，输出手机端仍可读的标题、构图与事实边界。没有可用证据或主体时使用事实中性的标题/留白骨架，而不是把未知结果画成真实案例。

![封面锚点示例：以“忙不是成长”作为文字承诺，不暗示未经证实的结果](./assets/visual-examples/cover-anchor-example.png)

> 仓库内原创示例图：使用文字承诺锚点，展示标题、留白和中性支持物；不代表数据、案例或已交付的客户成果。

### 9. `wb-xhs-xiaohei-illustration`

黑白叙事插图技能，适合把“下班后学习”“沟通卡住”“从混乱到有序”等主题变成一眼可读的人物动作和情绪关系。

它会输出单一叙事动作、主体留白和 3:4 页面用途说明；没有授权的人物素材时只使用非特定人物，不复制第三方角色、成图或真实人物形象。

![黑白叙事插图示例：下班后坐在书桌前学习的非特定人物，上方留出标题空间](./assets/visual-examples/xiaohei-narrative-example.png)

> 仓库内原创示例图：通过“下班后学习”的单一动作表达主题，人物为非特定角色，顶部留白可由版式层放入标题。

### 10. `wb-xhs-material-illustration`

模块化素材插画技能，适合为工具、流程、栏目和知识图文建立可重复使用的视觉组件。

它会把概念拆成物件、步骤、关系、角标和说明组件，并统一线条、色块、圆角和留白规则。用户同时要“素材 + 封面”时，先要求封面精确标题，再分别完成素材与封面，避免把素材拼图误当成封面设计。

![模块化素材插画示例：清单、计时器、流程、文件夹、便签和灵感标记六类组件](./assets/visual-examples/material-illustration-example.png)

> 仓库内原创示例图：六种可拆分、可复用的栏目组件，共用线条、色彩、圆角与留白规则；顶部留白可承接封面或栏目标题。

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

## 视觉生产融合了什么

本项目先参考 [ziguishian/xhs-visual-director-skill](https://github.com/ziguishian/xhs-visual-director-skill)，把视觉判断嵌入选题、改稿、账号档案和排期；本次再把真正的视觉交付拆成独立的路由、封面、黑白插图和模块化素材技能。

| 视觉导演模块 | 提取内容 | 落到本项目 |
|---|---|---|
| 10 问澄清 | 完整图文项目前先明确目标、受众、观点、素材、风格、转化 | `wb-xhs-humanize-compliance`, `wb-xhs-schedule-review` |
| 风格判断报告 | 内容类型、传播目标、读者情绪、信息密度、推荐风格 | `wb-xhs-topic-bank`, `wb-xhs-account-profile` |
| 8 页结构 | 封面、痛点、认知、方法、案例、操作、总结、引导 | `wb-xhs-humanize-compliance`, `wb-xhs-schedule-review` |
| 统一视觉母版 | 1080x1440px、3:4、边距、网格、字体、色彩、组件语言 | `wb-xhs-account-profile`, `wb-xhs-schedule-review` |
| 视觉审查 | 封面冲击、手机端可读、信息层级、风格统一、避免 PPT 感 | `wb-xhs-humanize-compliance`, `wb-xhs-low-follower-pattern` |

### 新增视觉技能来源

| 新增来源 | 提取方式 | 落到本项目 |
| --- | --- | --- |
| `ponyodong2026/ponyo-cover-anchor-system` | 仅重写证据、主体、对照和文字四类封面锚点 | `wb-xhs-cover-anchor` |
| `helloianneo/ian-xiaohei-illustrations` | 吸收简洁黑白叙事方向，保留 MIT 来源归属 | `wb-xhs-xiaohei-illustration` |
| `op7418/guizang-material-illustration` | 仅吸收模块化素材组织思路 | `wb-xhs-material-illustration` |

这三类新增融合均不复制第三方图片、角色、模板、素材包或未授权提示词；完整许可与边界见 [VISUAL_SKILLS_FUSION_NOTES.md](./VISUAL_SKILLS_FUSION_NOTES.md)。

详细说明见：

[VISUAL_DIRECTOR_FUSION_NOTES.md](./VISUAL_DIRECTOR_FUSION_NOTES.md)

## 和相关项目的关系

这个仓库保持独立，不把其他项目整包并入。

| 项目 | 本仓库如何使用 |
|---|---|
| WorkBuddy 原文 | 作为冷启动主线：变现倒推、账号档案、选题、改稿、排期复盘 |
| yanliudreamer 小红书系列 | 补强起号、个人 IP、10-20 条验证、长期主义和爆款底层需求 |
| dbskill | 只提取适合小红书的标题、内容诊断、对标、共鸣、开头、文风和状态记录模块 |
| xhs-visual-director-skill | 提取视觉导演方法，转成运营技能的视觉字段与生产约束 |
| ponyodong2026/ponyo-cover-anchor-system | 只重写可迁移的封面锚点，不复制模板或提示词 |
| helloianneo/ian-xiaohei-illustrations | 参考黑白叙事方向并保留 MIT 来源归属，不复制角色或成图 |
| op7418/guizang-material-illustration | 只吸收模块化素材组织思路，不复制素材包或模板 |

如果你只想做小红书账号冷启动，用本仓库即可。  
如果你要把小红书内容做成封面、黑白插图或栏目素材，使用本仓库的 `wb-xhs-visual-router`；如果只做与小红书内容无关的单次图片生成，再直接使用通用图像工具。

## 安装

复制 10 个 skill 目录到 Codex skills 目录：

```bash
cp -R wb-xhs-* ~/.codex/skills/
```

然后重启 Codex。

如果你使用 Claude Code，也可以复制到：

```bash
cp -R wb-xhs-* ~/.claude/skills/
```

## 调用时自动准备和更新运行环境

每个 `wb-xhs-*` Skill 在执行需要外部程序的步骤前，都会先检查当前工具版本。缺少工具或版本落后时，优先在项目环境中自动安装或更新到最新稳定版本，然后运行诊断确认成功。

网络下载和系统级安装仍需 Codex 权限确认，不使用 `sudo`，也不会把未验证的更新说成成功。纯文字任务不会无意义地安装软件；如果更新失败，Skill 会在依赖步骤前停止并报告具体原因。

详细规则见 [`RUNTIME_UPDATE_POLICY.md`](RUNTIME_UPDATE_POLICY.md)。

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

```text
给这篇职场成长文章做 3:4 封面，标题是“忙不是成长”，不要编造数据或案例。
```

```text
给“下班后学习”配一张黑白叙事插图：非特定人物、保留标题留白。
```

```text
为我的效率栏目做 6 个可复用素材，并配一张封面；封面标题是“工作流别再靠记忆”。
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
├── VISUAL_SKILLS_FUSION_NOTES.md
├── assets/
│   └── visual-examples/
├── GLOSSARY.md
├── verified.md
├── candidates/
├── rejected/
├── tests/
│   └── visual-skills/
│       └── final-nine-retest/
├── wb-xhs-monetization-backsolve/
├── wb-xhs-low-follower-pattern/
├── wb-xhs-account-profile/
├── wb-xhs-topic-bank/
├── wb-xhs-humanize-compliance/
├── wb-xhs-schedule-review/
├── wb-xhs-visual-router/
├── wb-xhs-cover-anchor/
├── wb-xhs-xiaohei-illustration/
└── wb-xhs-material-illustration/
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
- `VISUAL_SKILLS_FUSION_NOTES.md`：本次新增视觉技能的来源、许可与不复制边界
- `assets/visual-examples/`：README 中展示封面锚点、黑白叙事插图和模块化素材的原创示例图
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
- [ponyodong2026/ponyo-cover-anchor-system](https://github.com/ponyodong2026/ponyo-cover-anchor-system)
- [helloianneo/ian-xiaohei-illustrations](https://github.com/helloianneo/ian-xiaohei-illustrations)
- [op7418/guizang-material-illustration](https://github.com/op7418/guizang-material-illustration)

本仓库只保留短引用、方法论重写和可执行工作流，不包含原文全文。

## 免责声明

这些 skills 是对公开文章中方法论的再组织和工程化表达，不代表原作者、WorkBuddy 或相关平台官方立场。平台规则、工具能力和账号增长结果都可能变化，请结合当前实际情况使用。
