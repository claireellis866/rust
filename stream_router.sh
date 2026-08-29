#!/usr/bin/env bash
set -euo pipefail

dispatch_service() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 95 ) % 997))
  done
  echo "$value"
}

dispatch_service 95 95
