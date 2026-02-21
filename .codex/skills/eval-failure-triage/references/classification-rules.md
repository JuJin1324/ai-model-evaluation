# Failure Classification Rules

Use these rules to keep triage decisions consistent.

## 1) Environment

Signals:
- Dependency install/runtime mismatch
- Missing env vars, secrets, ports, permissions
- Infra-only errors (network timeout, DNS, runner outage)

Checks:
- Re-run same commit in clean environment
- Compare local vs CI runtime versions

## 2) Data

Signals:
- Fixture/schema mismatch
- Seed/migration drift
- Invalid test input assumptions

Checks:
- Recreate fixtures from scratch
- Validate expected schema and seed state

## 3) Logic

Signals:
- Deterministic assertion failure
- Consistent behavioral regression after code change
- Business-rule mismatch

Checks:
- Bisect changed files/modules
- Validate expected/actual behavior with minimal reproduction

## 4) Flaky

Signals:
- Same code alternates pass/fail
- Timing/order/race dependence
- Shared state leakage across tests

Checks:
- Repeat run 3-5 times
- Isolate test execution order and parallelism

## Priority Mapping

- `P0`: release blocker, data corruption risk, core path broken
- `P1`: major feature broken, workaround exists
- `P2`: minor edge-case or non-blocking failure
