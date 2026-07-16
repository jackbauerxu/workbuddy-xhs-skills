#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../../.." && pwd)"
check() { rg -q --fixed-strings "$2" "$root/$1"; }

# A visual skill must set an art direction before generation and inspect the
# result for craft, relevance, and legibility rather than accepting the first
# generic image that satisfies only its source-style constraints.
check wb-xhs-visual-router/references/runtime-contract.md 'art_direction'
check wb-xhs-visual-router/references/runtime-contract.md 'quality_gate'
check wb-xhs-cover-anchor/SKILL.md '内容专属艺术方向'
check wb-xhs-cover-anchor/SKILL.md '缩略图、文字、锚点、信任'
check wb-xhs-xiaohei-illustration/SKILL.md 'quality_gate'
check wb-xhs-xiaohei-illustration/SKILL.md '叙事动作、线稿完成度、留白、批注和原创性'
check wb-xhs-material-illustration/SKILL.md '结构可读、标签准确、材质完成度和视觉层级'
check wb-xhs-material-illustration/SKILL.md '通用 3D 图标拼盘'

printf '8/8 visual quality-bar checks passed\n'
