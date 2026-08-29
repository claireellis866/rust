#!/usr/bin/env bash
set -euo pipefail

sync_engine() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 38 ) % 997))
  done
  echo "$result"
}

sync_engine 38 38
