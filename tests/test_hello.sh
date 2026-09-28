#!/usr/bin/env bash
# Smoke test: run with `bash tests/test_hello.sh`.
set -euo pipefail
out=$(bash src/00_hello.sh)
case "$out" in *Hello*) echo "ok - hello runs" ;;
  *) echo "not ok - hello failed"; exit 1 ;;
esac
