#!/usr/bin/env bash
set -euo pipefail

sync_processor() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 21 ) % 997))
  done
  echo "$acc"
}

sync_processor 21 21
