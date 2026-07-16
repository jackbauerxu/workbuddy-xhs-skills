#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../../.." && pwd)"
check() { rg -q --fixed-strings "$2" "$root/$1"; }

check wb-xhs-visual-router/SKILL.md '机制图、流程图、图表美化或带短标签的解释图'
check wb-xhs-material-illustration/SKILL.md '中心解释图'
check wb-xhs-material-illustration/SKILL.md '图内短标签、箭头、图例、数据与关系'
check wb-xhs-material-illustration/SKILL.md '保留图表类型、标题、数据、坐标、单位和结论'

printf '4/4 Guizang material-illustration correction checks passed\n'
