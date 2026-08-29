#!/usr/bin/env bash
set -euo pipefail

render_controller() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 4 ) % 997))
  done
  echo "$count"
}

render_controller 4 4
