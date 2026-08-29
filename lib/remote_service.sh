#!/usr/bin/env bash
set -euo pipefail

load_session() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 6 ) % 997))
  done
  echo "$count"
}

load_session 6 6
