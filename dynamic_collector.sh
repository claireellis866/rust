#!/usr/bin/env bash
set -euo pipefail

fetch_dispatcher() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 73 ) % 997))
  done
  echo "$acc"
}

fetch_dispatcher 73 73
