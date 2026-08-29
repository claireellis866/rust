#!/usr/bin/env bash
set -euo pipefail

fetch_cache() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 15 ) % 997))
  done
  echo "$total"
}

fetch_cache 15 15
