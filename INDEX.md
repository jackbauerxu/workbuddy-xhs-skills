# WorkBuddy 小红书冷启动 — Skill Index

> 从公开长文方法论整理而来，产出 10 个可执行 Agent Skills。
> 处理时间: 2026-07-07
> 视觉生产更新: 2026-07-16

## 关于这篇文章

- **作者**: 文子 (@Eejoylove)
- **发布时间**: 2026-07-06
- **一句话主旨**: 先从变现路径倒推账号，再用 WorkBuddy 把对标、记忆、选题、改稿、排期复盘串成小红书冷启动系统。
- **融合补充**: 已融合 yanliudreamer 小红书系列、dbskill、xhs-visual-director-skill，以及完成封面/诊断、16:9 小黑正文配图、材质解释图/图表美化的可迁移方法；视觉生产现在由 4 个独立 skills 交付。
- **整篇理解**: [BOOK_OVERVIEW.md](./BOOK_OVERVIEW.md)
- **精华长文**: [DIGEST.md](./DIGEST.md)
- **术语词典**: [GLOSSARY.md](./GLOSSARY.md)
- **融合说明**: [FUSION_NOTES.md](./FUSION_NOTES.md)
- **dbskill 提取说明**: [DBSKILL_EXTRACTION_NOTES.md](./DBSKILL_EXTRACTION_NOTES.md)
- **视觉导演融合说明**: [VISUAL_DIRECTOR_FUSION_NOTES.md](./VISUAL_DIRECTOR_FUSION_NOTES.md)
- **视觉技能融合说明**: [VISUAL_SKILLS_FUSION_NOTES.md](./VISUAL_SKILLS_FUSION_NOTES.md)

## Skill 列表

### 定位与对标

- [`wb-xhs-monetization-backsolve`](./wb-xhs-monetization-backsolve/SKILL.md) — 先确认 offer、变现路径、timing 和个人 IP 路线，再倒推账号定位、内容方向、视觉信任感和验证计划。
- [`wb-xhs-low-follower-pattern`](./wb-xhs-low-follower-pattern/SKILL.md) — 找低粉爆款样本，用点击率 × 停留时长 × 互动率、对标过滤、共鸣解码和视觉骨架拆出可迁移结构。

### WorkBuddy 生产系统

- [`wb-xhs-account-profile`](./wb-xhs-account-profile/SKILL.md) — 为 WorkBuddy 建立账号档案、个人语言样本、可信主张、视觉身份和长期记忆。
- [`wb-xhs-topic-bank`](./wb-xhs-topic-bank/SKILL.md) — 用七类标题公式、标题触发器、五类用户底层需求和封面钩子建立可持续选题库。

### 发布与迭代

- [`wb-xhs-humanize-compliance`](./wb-xhs-humanize-compliance/SKILL.md) — 对 AI 初稿做人味化、单一核心机制、5 秒开头、图文拆页和平台表达检查。
- [`wb-xhs-schedule-review`](./wb-xhs-schedule-review/SKILL.md) — 制定前 10 条/30 天排期，并把内容生产、视觉生产和 10-20 条数据复盘写回账号档案。

### 视觉生产

- [`wb-xhs-visual-router`](./wb-xhs-visual-router/SKILL.md) — 预检视觉事实边界并把完成封面/诊断、正文配图/shot list、解释图/图表请求交给正确专家。
- [`wb-xhs-cover-anchor`](./wb-xhs-cover-anchor/SKILL.md) — 以事实、模板、诊断和缩略图规则构建可信的 3:4 完成封面。
- [`wb-xhs-xiaohei-illustration`](./wb-xhs-xiaohei-illustration/SKILL.md) — 默认用小黑承担动作的 16:9 白底手绘图表达文章认知锚点；用户明确指定时可用 3:4 铅笔人物叙事变体。
- [`wb-xhs-material-illustration`](./wb-xhs-material-illustration/SKILL.md) — 生成带短标签的材质解释图、图表美化与可复用组件。

## 引用图

```mermaid
graph LR
    A["wb-xhs-monetization-backsolve"] --> B["wb-xhs-low-follower-pattern"]
    A --> C["wb-xhs-account-profile"]
    B --> D["wb-xhs-topic-bank"]
    C --> D
    D --> E["wb-xhs-humanize-compliance"]
    E --> F["wb-xhs-schedule-review"]
    F ==> D
    F ==> C
    D --> G["wb-xhs-visual-router"]
    E --> G
    G --> H["wb-xhs-cover-anchor"]
    G --> I["wb-xhs-xiaohei-illustration"]
    G --> J["wb-xhs-material-illustration"]
```

## 推荐使用顺序

1. `wb-xhs-monetization-backsolve`
2. `wb-xhs-account-profile`
3. `wb-xhs-schedule-review`
4. `wb-xhs-topic-bank`
5. `wb-xhs-humanize-compliance`
6. `wb-xhs-low-follower-pattern`
7. `wb-xhs-schedule-review`
8. `wb-xhs-visual-router`（需要图片时）

视觉交付时按请求选择：完成封面/旧封面诊断 → `wb-xhs-cover-anchor`；16:9 小黑正文配图/shot list → `wb-xhs-xiaohei-illustration`；机制图、流程图、图表美化与可复用素材 → `wb-xhs-material-illustration`。同时需要素材和封面时，先确认封面精确标题，再分别交接。

## 安装使用

把每个 skill 目录复制到 `~/.codex/skills/` 后，重启 Codex 即可调用。

```bash
cp -R wb-xhs-* ~/.codex/skills/
```

## 审计轨迹

- 候选单元池: [candidates/](./candidates/)
- 被淘汰候选: [rejected/](./rejected/)
- 阶段 0: [BOOK_OVERVIEW.md](./BOOK_OVERVIEW.md)
