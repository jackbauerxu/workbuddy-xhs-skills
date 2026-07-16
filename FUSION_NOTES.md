# 融合说明: WorkBuddy 小红书 Skill × yanliudreamer 小红书系列 × dbskill 方法模块 × 视觉导演模块

更新时间: 2026-07-07

## 新增阅读来源

本次在原 WorkBuddy 小红书冷启动 Skill 基础上，补充读取并融合了 yanliudreamer 的 4 篇 X Article:

- [小红书起号(上)：从0-20万粉，有关流量，账号定位，涨粉，选题](https://x.com/yanliudreamer/status/2063422060123320432)
- [小红书运营 (下)：0-20万粉，有关变现，个人IP，长期主义](https://x.com/yanliudreamer/status/2064531701783732656)
- [0基础小红书起号教程(上)｜从0到第一波流量（保姆级）](https://x.com/yanliudreamer/status/2071450551808938105)
- [0基础小红书教程(中)｜爆款内容怎么做+真实案例！](https://x.com/yanliudreamer/status/2073292022316966217)

公开搜索还定位到一条爆款方法总结动态:

- [爆款内容底层需求总结](https://x.com/yanliudreamer/status/2073583014320509160)

本次另提取了 dbskill 中适合小红书场景的内容方法模块:

- [dontbesilent2025/dbskill](https://github.com/dontbesilent2025/dbskill/tree/main)

提取方式不是合并项目，而是把 `dbs-xhs-title`、`dbs-content`、`dbs-benchmark`、`dbs-resonate`、`dbs-spread`、`dbs-hook`、`dbs-ai-check` 以及状态记录思路，转译为现有 `wb-xhs-*` skills 的检查项和输出字段。

本次还提取了 xhs-visual-director-skill 中适合本项目的视觉导演模块:

- [ziguishian/xhs-visual-director-skill](https://github.com/ziguishian/xhs-visual-director-skill)

提取方式不是替代独立视觉导演 skill，而是把 10 问澄清、风格判断报告、8 页结构、统一视觉母版和视觉审查清单转译为现有小红书运营 skills 的视觉交付字段。

## 取长补短

原 WorkBuddy Skill 的优势:

- 更工程化: 适合沉淀成 Agent 可执行的步骤。
- 更商业闭环: 从变现路径倒推账号定位。
- 更适合工具化: 账号档案、选题库、排期复盘都能被文件化。

yanliudreamer 系列补强的部分:

- 更强调 timing: 顺势而为，风口来了要能接住。
- 更强调个人 IP: 小红书不是只看内容，也看“这个人是谁”。
- 更强调验证: 定位不是想出来的，是用 10-20 条内容跑出来的。
- 更强调爆款指标: 点击率 × 停留时长 × 互动率。
- 更强调用户底层需求: 情感共鸣、见证成长、获得新知、学习提升、身份表达。
- 更强调长期主义: 流量是结果，信任和个人成长才是长期资产。

融合后的原则:

```text
变现路径定方向
Timing 判断是否值得现在做
个人 IP 决定长期信任
前 10 条建立系统画像
10-20 条验证定位
爆款内容用点击 × 停留 × 互动拆解
选题要对应用户底层需求
数据复盘要写回账号档案
标题要可追溯到明确触发器
改稿要先诊断再润色
对标要先过滤再学习
周复盘要变成下一轮实验输入
选题要能落成封面和多页图文
账号档案要包含视觉身份
排期要包含视觉生产节点
```

## Skill 更新摘要

### wb-xhs-monetization-backsolve

新增:

- timing / 风口判断
- 个人 IP 与追热点两种打法选择
- 长期表达能力检查
- 10-20 条内容验证计划

核心变化: 不再只问“怎么变现”，还要问“为什么现在做、为什么是你、你能不能长期讲下去”。

### wb-xhs-low-follower-pattern

新增:

- 点击率 × 停留时长 × 互动率
- 封面标题负责点击
- 开头和结构负责停留
- 收藏/评论/转发负责互动
- 五类爆款需求判断

核心变化: 不再只拆外部样本结构，还要判断内容到底强在哪个数据环节。

### wb-xhs-account-profile

新增:

- 信任资产
- 个人 IP 故事
- 人设垂直
- 主线话题与延展话题
- 评论区认可点和私信问题写回

核心变化: 账号档案不只是风格指南，而是“信任名片”。

### wb-xhs-topic-bank

新增:

- 情感共鸣
- 见证成长
- 获得新知
- 学习提升
- 身份表达
- 发帖前三问: 解决谁的问题、为什么点进来、看完带走什么
- 标题公式可追溯
- 12 类标题触发器
- 标题五项硬检: 20 字以内、留悬念、扩大用户词、真实痛点、至少 2 个张力元素

核心变化: 选题不只按标题公式生成，还要按用户底层需求分层。

### wb-xhs-humanize-compliance

新增:

- 钩子检查
- 真实背景
- 3 点以内核心信息
- 结尾评论/收藏引导
- 点击、停留、互动维度诊断
- 内容四维诊断
- 单一核心机制审计
- 5 秒开头检查
- 先诊断再改写的文风校准

核心变化: 去 AI 味不只是变口语，而是同时提升真人感和内容传播力。

### wb-xhs-schedule-review

新增:

- 前 10 条系统画像建立期
- 3 条自我背景/经历
- 3 条方法/经验
- 2 条踩坑/反思
- 2 条情绪/观点
- 10-20 条后再收敛定位
- 爆款后顺着方向继续发

核心变化: 复盘不再只是每周看数据，而是把冷启动当作一组实验。

## 推荐使用顺序

新号从零开始:

```text
wb-xhs-monetization-backsolve
-> wb-xhs-account-profile
-> wb-xhs-schedule-review
-> wb-xhs-topic-bank
-> wb-xhs-humanize-compliance
-> wb-xhs-low-follower-pattern
-> wb-xhs-schedule-review
```

已有账号重新定位:

```text
wb-xhs-schedule-review
-> wb-xhs-monetization-backsolve
-> wb-xhs-account-profile
-> wb-xhs-low-follower-pattern
-> wb-xhs-topic-bank
```

单篇内容优化:

```text
wb-xhs-topic-bank
-> wb-xhs-humanize-compliance
-> wb-xhs-low-follower-pattern
```

爆款复盘:

```text
wb-xhs-low-follower-pattern
-> wb-xhs-schedule-review
-> wb-xhs-account-profile
```

## 2026-07-16 视觉生产融合补充

原有 6 个运营技能继续保留各自的视觉字段：定位负责视觉信任假设、账号档案负责视觉身份、选题和改稿负责视觉 Brief、排期复盘负责制作与数据约束。真正的视觉交付则由以下 4 个独立 skill 负责，不再由运营 skill 越权代替。

### wb-xhs-visual-router

新增:

- Visual Brief 交接。
- 封面标题、来源、主体和事实边界预检。
- 封面、黑白叙事插图、模块化素材三类请求分流。
- 图片工具调用、保存和 QA 的真实状态记录。

核心变化: 视觉请求有统一入口；没有真正调用工具时，输出必须明确是 `not_called`，不能把视觉方案表述成图片已交付。

### wb-xhs-cover-anchor

新增:

- 从 `ponyodong2026/ponyo-cover-anchor-system` 转译的证据、主体、对照、文字承诺四类锚点。
- 3:4 封面、手机端可读标题和事实中性兜底。

核心变化: 封面从“凭空做一张好看图”变成“用可确认信息建立可信承诺”；不复制来源模板、提示词或成图。

### wb-xhs-xiaohei-illustration

新增:

- 从 `helloianneo/ian-xiaohei-illustrations` 吸收的简洁黑白叙事方向。
- 把主题转成非特定人物、动作、情绪关系和标题留白。

核心变化: 抽象主题可以获得可读的叙事插图，同时保留 MIT 来源归属，不复制角色或成图。

### wb-xhs-material-illustration

新增:

- 从 `op7418/guizang-material-illustration` 转译的模块化素材组织方法。
- 可复用的物件、步骤、关系、角标和说明组件。
- “素材 + 封面”任务中的封面标题预检与双交付拆分。

核心变化: 栏目视觉从一次性配图升级为可复用组件系统；不复制来源素材包、模板或未授权提示词。

## 更新后的推荐使用顺序

需要把内容交付为图文视觉时:

```text
wb-xhs-topic-bank / wb-xhs-humanize-compliance
-> wb-xhs-visual-router
-> wb-xhs-cover-anchor / wb-xhs-xiaohei-illustration / wb-xhs-material-illustration
-> wb-xhs-schedule-review
```
