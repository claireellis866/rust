#!/usr/bin/env bash
set -euo pipefail

dispatch_session() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 27 ) % 997))
  done
  echo "$result"
}

dispatch_session 27 27
