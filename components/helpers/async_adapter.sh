#!/usr/bin/env bash
set -euo pipefail

render_engine() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 93 ) % 997))
  done
  echo "$total"
}

render_engine 93 93
