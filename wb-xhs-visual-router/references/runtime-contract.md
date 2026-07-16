# 视觉运行时契约

路由器是下列共同状态的唯一规范；专家只补充自己的方法、提示词与 QA。

```yaml
visual_brief:
  post_topic: confirmed | unknown
  cover_title: confirmed | unknown
  confirmed_claims: []
  unsupported_exact_claims: []
  subject_evidence: []
  requested_outputs: [cover | cover_diagnosis | xiaohei_illustration | xiaohei_shot_list | material_illustration | chart_redraw]
  xiaohei_style_variant: xiaohei_body | pencil_narrative | not_applicable
  canvas: "specialist-specific: cover 3:4 | xiaohei 16:9 default, pencil_narrative 3:4 only when explicit | material 1.9:1"
  pixel_exact_required: true | false
  safe_defaults_disclosed: []
runtime_evidence:
  mode: visual | operational | not_applicable
  selected_specialists: []
  imagegen: called | not_called
  persistence: saved | not_saved | not_applicable
  qa: passed | failed | not_run
  capability_gap: null | text
```

`pixel_exact_required: true` 表示用户要求与指定像素完全一致；`false` 表示通过画布 QA 的任一有效 3:4 输出即可。两者都不能把错误比例、未保存文件或未执行 QA 说成成功。

若用户已经提供一个现有资产而被选专家或图像工具不可用：保留该资产，不调用图像生成，填 `imagegen: not_called`、`qa: not_run`，并说明是“专家/工具不可用”的能力缺口。不要以“已 QA”代替未发生的审查。

排期 skill 只能传递已确认的生产日期与复盘约束；它不得写入 `selected_specialists`、`mode`、`persistence`、输出路径或未知字段。
