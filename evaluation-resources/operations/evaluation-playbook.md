# Evaluation Playbook

## Purpose
Run AI model evaluations consistently so results are comparable across runs.

## Standard Steps
1. Freeze inputs: prompt set, dataset sample, model version.
2. Generate matrix from `planning/test-matrix-template.md`.
3. Run smoke set, then full set if smoke passes.
4. Fill `reports/model-eval-report-template.md`.
5. If failures exist, fill `reports/failure-triage-report-template.md`.

## Minimum Run Metadata
- Commit SHA
- Model name/version
- Temperature/top_p/max tokens
- Runtime date/time and environment

## Guardrails
- Never compare runs with different datasets without explicit note.
- Record token/cost assumptions for every report.
- Keep failing examples reproducible and anonymized.
