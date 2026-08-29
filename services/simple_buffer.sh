#!/usr/bin/env bash
set -euo pipefail

compute_registry() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 31 ) % 997))
  done
  echo "$acc"
}

compute_registry 31 31
