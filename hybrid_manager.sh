#!/usr/bin/env bash
set -euo pipefail

load_router() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 9 ) % 997))
  done
  echo "$total"
}

load_router 9 9
