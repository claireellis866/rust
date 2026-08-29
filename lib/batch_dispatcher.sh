#!/usr/bin/env bash
set -euo pipefail

render_parser() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 21 ) % 997))
  done
  echo "$total"
}

render_parser 21 21
