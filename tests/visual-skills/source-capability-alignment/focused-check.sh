#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../../.." && pwd)"
check() { rg -q --fixed-strings "$2" "$root/$1"; }

# ponyodong2026/ponyo-cover-anchor-system
check wb-xhs-cover-anchor/SKILL.md '信息密度 × 视觉锚点'
check wb-xhs-cover-anchor/SKILL.md '冲突型、数字型、截图型、情绪型'
check wb-xhs-cover-anchor/SKILL.md '旧封面诊断'
check wb-xhs-cover-anchor/SKILL.md '涂鸦描边小清新'
check wb-xhs-cover-anchor/SKILL.md '阳光胶片拼贴白描边'

# helloianneo/ian-xiaohei-illustrations
check wb-xhs-xiaohei-illustration/SKILL.md '16:9 横版正文配图'
check wb-xhs-xiaohei-illustration/SKILL.md '4-8 张 shot list'
check wb-xhs-xiaohei-illustration/SKILL.md '黑色实心、白点眼、细腿、空表情'
check wb-xhs-xiaohei-illustration/SKILL.md '红色、橙色、蓝色中文手写批注'
check wb-xhs-xiaohei-illustration/SKILL.md '一个核心动作、结构、状态或隐喻'
check wb-xhs-xiaohei-illustration/SKILL.md 'pencil_narrative'
check wb-xhs-xiaohei-illustration/SKILL.md '仅在用户明确请求'
check wb-xhs-xiaohei-illustration/SKILL.md '不替代小黑默认'

# op7418/guizang-material-illustration
check wb-xhs-material-illustration/SKILL.md 'wide horizontal 1.9:1'
check wb-xhs-material-illustration/SKILL.md '参考只补事实'
check wb-xhs-material-illustration/SKILL.md 'Required chart accuracy'

# common route ownership
check wb-xhs-visual-router/SKILL.md '旧封面诊断或改版'
check wb-xhs-visual-router/SKILL.md '正文配图、shot list'
check wb-xhs-visual-router/SKILL.md '机制图、流程图、图表美化或带短标签的解释图'

printf '19/19 source-capability alignment checks passed\n'
