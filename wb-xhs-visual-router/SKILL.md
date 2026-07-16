---
name: wb-xhs-visual-router
description: Use when a Xiaohongshu request needs a 3:4 cover, hand-drawn black-and-white illustration, reusable material illustration, or a combination of those visual deliverables, and the agent must choose the correct visual specialist and preserve a truthful production state.
---

# 小红书视觉路由器

只负责意图分流、共同状态和交接。不要在这里重写专家的画面方法、提示词或详细 QA；它们分别属于对应专家 skill。

## 先做预检

1. 用户同时要“素材插画 + 封面”而没有**封面精确标题**：先只问这个标题。不要先选模式、生成图片或交接。
2. 用户要求把没有来源的精确量化主张放上画面：保留原文逐字提问。例如：`“效率提升80%”没有可核验来源，是否允许把“效率提升80%”替换为不含数字的定性对比？` 不要改成泛泛的“无来源数字”。
3. 必填项缺失而一个安全默认值不改变事实、交付类型或用户意图时，直接采用并披露该**安全默认值**；只在无法安全默认时问一个最小问题。用户说“不要问我，直接给这篇职场文章配图”且已有泛化主题时，可采用“非特定职场人物 + 中性办公室场景 + 无未证实数据”的默认值。

封面标题预检和无来源精确主张预检本身属于视觉流程：在这两种预检响应中，runtime evidence 必须为 `mode: visual`、`imagegen: not_called`、`persistence: not_saved`、`qa: not_run`。不得把已经选择视觉路由的预检写成 `not_applicable`。

## 选择专家

| 用户意图 | 交给 | 说明 |
| --- | --- | --- |
| 单张封面、标题锚点、证据可读性 | `wb-xhs-cover-anchor` | 专家决定锚点方向与封面 QA。 |
| 黑白手绘、简笔人物、小黑式叙事插图 | `wb-xhs-xiaohei-illustration` | 专家决定线条、人物和留白。 |
| 可复用图标、物件、流程或栏目素材 | `wb-xhs-material-illustration` | 专家决定素材系统与资产拆分。 |
| 素材插画加封面 | 先完成精确标题预检；再按顺序交给素材专家和封面专家 | 两个专家各自保留方法所有权。 |

## 执行

1. 读取 [runtime contract](references/runtime-contract.md) 和 [Visual Brief](references/visual-brief.md)，创建或补齐共同状态。
2. 交给被选专家时传递 Visual Brief 与已确认事实；不要编造人物身份、数据、案例或来源。
3. 有可用图像工具时，按专家要求生成、审查、只修失败维度，并记录真实路径与状态。
4. 无工具、无写入权限或专家不可用时，保留现有资产（如有），把 `imagegen` 写为 `not_called`，写清能力缺口；不得声称已生成、已保存或已通过 QA。
5. 一旦真实资产已持久化且用户没有要求解释，只返回必要的交付位置或下一步，不追加虚构的“成功说明”。

## 边界

- 不把这个 skill 当作通用文案、账号定位、选题或排期入口；这些交回相邻运营 skills。
- 不复制第三方的专属图片、模板、字体、人物或未授权提示词，只吸收可迁移的方法结构。
- 不把开发或测试方法写进面向用户的视觉运行时内容。

## 相关 skills

- routes-to: `wb-xhs-cover-anchor`, `wb-xhs-xiaohei-illustration`, `wb-xhs-material-illustration`
- composes-with: `wb-xhs-topic-bank`, `wb-xhs-humanize-compliance`, `wb-xhs-schedule-review`
