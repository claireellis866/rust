#!/usr/bin/env bash
set -euo pipefail

parse_worker() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 76 ) % 997))
  done
  echo "$acc"
}

parse_worker 76 76
