#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../../.." && pwd)"
check() { rg -q --fixed-strings "$2" "$root/$1"; }
for file in \
  wb-xhs-visual-router/SKILL.md \
  wb-xhs-visual-router/references/runtime-contract.md \
  wb-xhs-cover-anchor/SKILL.md \
  wb-xhs-xiaohei-illustration/SKILL.md \
  wb-xhs-material-illustration/SKILL.md; do
  test -f "$root/$file" || { echo "missing: $file" >&2; exit 1; }
done
check wb-xhs-account-profile/SKILL.md 'memory_write_status: not_called'
check wb-xhs-low-follower-pattern/SKILL.md 'low-follower high-performing'
check wb-xhs-topic-bank/SKILL.md 'title formulas'
check wb-xhs-topic-bank/SKILL.md 'confirmed positioning is absent'
check wb-xhs-schedule-review/SKILL.md 'constraints: []'
check wb-xhs-schedule-review/SKILL.md 'select `wb-xhs-schedule-review` alone'
check wb-xhs-visual-router/SKILL.md 'imagegen'
check wb-xhs-visual-router/SKILL.md 'mode: visual'
check wb-xhs-visual-router/references/runtime-contract.md 'pixel_exact_required'
check wb-xhs-visual-router/references/runtime-contract.md 'not_called'
check wb-xhs-cover-anchor/SKILL.md 'not_called'
if rg -n -i 'cangjie' \
  "$root/wb-xhs-visual-router" \
  "$root/wb-xhs-cover-anchor" \
  "$root/wb-xhs-xiaohei-illustration" \
  "$root/wb-xhs-material-illustration"; then
  echo 'cangjie is not allowed in visual runtime files' >&2
  exit 1
fi
printf '9/9 targeted contract checks passed\n'
