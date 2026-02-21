---
name: eval-failure-triage
description: Triage failing tests in local/CI runs by classifying root cause (environment, data, logic, flaky), extracting evidence, and producing a standardized failure report with reproduction steps and priority.
---

# Eval Failure Triage

Use this skill when tests fail and the team needs fast, consistent root-cause analysis.

## Inputs

- Test logs (local or CI)
- Changed files (`git diff --name-only`)
- Optional: failing test list and rerun output

## Outputs

- Failure classification (`environment`, `data`, `logic`, `flaky`)
- Reproduction command
- Priority (`P0`, `P1`, `P2`)
- Report in:
  - default project path: `../problem-solving/problems/large-scale-data-processing/failure-triage-report.md`
  - local skill template: `assets/failure-report-template.md`

## Workflow

1. Capture failing tests and error snippets (first failure and final summary).
2. Map symptom to a cause class using `skills/eval-failure-triage/references/classification-rules.md`.
3. Attempt reproduction:
   - Run only failing tests first.
   - If non-deterministic, rerun 3-5 times to detect flaky behavior.
4. Scope impact from changed files and touched modules.
5. Assign priority:
   - `P0`: blocks release or broad regression
   - `P1`: feature-level breakage
   - `P2`: minor/non-blocking
6. Produce a standardized report and list next actions.

## Quick Start

```bash
bash skills/eval-failure-triage/scripts/triage_failure.sh \
  "npm test -- --runInBand" \
  "npm test -- tests/auth/login.spec.ts"
```

## Notes

- Keep conclusions evidence-based; include exact error lines.
- If logs are incomplete, state missing artifacts explicitly.
- For external CI providers, capture URL and summarize available details only.
