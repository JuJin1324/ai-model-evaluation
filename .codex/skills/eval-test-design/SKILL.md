---
name: eval-test-design
description: Design sustainable test plans by converting requirements and risk areas into a structured test matrix with happy path, edge, regression, and non-functional scenarios.
---

# Eval Test Design

Use this skill before implementation or before large refactors to define stable test coverage.

## Inputs

- Feature goal or change request
- Constraints (time, environment, infra limits)
- Known incidents or high-risk modules

## Outputs

- Test matrix document
- Priority tiers (`must`, `should`, `could`)
- Clear execution candidates for smoke and full runs

## Workflow

1. Define target behavior and failure impact.
2. Split scenarios:
   - Happy path
   - Edge and invalid input
   - Regression-prone paths
   - Non-functional checks (performance/reliability) when needed
3. Assign priority (`must/should/could`) and expected result per case.
4. Add observability points (logs/metrics) required for debugging.
5. Save result using `assets/test-matrix-template.md`.

## Quick Start

```bash
cp .codex/skills/eval-test-design/assets/test-matrix-template.md \
  evaluation-resources/planning/test-matrix-<topic>.md
```

## Notes

- Keep each test case atomic and reproducible.
- Prefer a small `must` set that can run on every PR.
- Record assumptions explicitly to prevent future drift.
