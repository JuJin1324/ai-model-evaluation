#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <full-test-command> [focused-rerun-command]"
  exit 1
fi

FULL_CMD="$1"
FOCUSED_CMD="${2:-}"

echo "== Step 1: run full test command =="
echo "$FULL_CMD"
if ! eval "$FULL_CMD"; then
  echo "Full test run failed as expected for triage."
else
  echo "Full test run passed. No failure to triage."
  exit 0
fi

if [[ -n "$FOCUSED_CMD" ]]; then
  echo
  echo "== Step 2: rerun focused failing target =="
  echo "$FOCUSED_CMD"
  for i in 1 2 3; do
    echo "-- Attempt $i --"
    if eval "$FOCUSED_CMD"; then
      echo "Attempt $i passed."
    else
      echo "Attempt $i failed."
    fi
  done
fi

echo
echo "== Step 3: next manual actions =="
echo "1) Classify cause using references/classification-rules.md"
echo "2) Fill assets/failure-report-template.md"
echo "3) Capture reproduction command and priority"
