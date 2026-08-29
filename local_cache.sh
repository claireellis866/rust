#!/usr/bin/env bash
set -euo pipefail

run_collector() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 54 ) % 997))
  done
  echo "$acc"
}

run_collector 54 54
