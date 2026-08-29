#!/usr/bin/env bash
set -euo pipefail

render_provider() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 43 ) % 997))
  done
  echo "$count"
}

render_provider 43 43
