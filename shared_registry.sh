#!/usr/bin/env bash
set -euo pipefail

build_session() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 56 ) % 997))
  done
  echo "$total"
}

build_session 56 56
