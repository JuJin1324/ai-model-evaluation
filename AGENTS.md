# Repository Guidelines

## Project Structure & Module Organization
This repository is documentation-first and organized around planning/operations artifacts.

- Root docs: `README.md`, `2w-brainstorm.md`, `how-diagram.md`
- AI evaluation references: `references/planning/`, `references/reports/`, `references/operations/`
- Skills: `skills/eval-test-design/`, `skills/eval-failure-triage/`

When adding new content, place it in the closest topic folder and keep filenames descriptive (for example, `load-test-plan.md`, `incident-retro-2026-02.md`).

## Build, Test, and Development Commands
There is no application build pipeline in this repository yet. Use basic Git and Markdown checks:

- `git status` : confirm local changes before commit.
- `git diff --name-only` : review modified files quickly.
- `rg "TODO|FIXME"` : locate unresolved notes before opening a PR.
- `markdownlint "**/*.md"` (if installed) : validate Markdown style.

## Coding Style & Naming Conventions
Use consistent Markdown style across all docs:

- Headings in sentence case, one `#` title per file.
- Use short sections, bullet lists, and fenced code blocks for commands.
- Prefer ASCII text unless non-ASCII is required by content.
- Filenames: kebab-case for new files (for example, `system-design-notes.md`).

Keep templates reusable and avoid embedding environment-specific secrets or private URLs.

## Testing Guidelines
Testing here means document quality checks:

- Verify internal consistency (terms, paths, and section names).
- Ensure referenced paths exist (for example, `references/reports/model-eval-report-template.md`).
- Run optional lint: `markdownlint "**/*.md"`.

For major updates, include a short validation note in the PR description (what was checked and how).

For sustainable test operations, use repository skills under `skills/`:

- `skills/eval-test-design/` for scenario and coverage design.
- `skills/eval-failure-triage/` for failure classification and report output.

Preferred flow:
1. Design test matrix first.
2. Execute and collect logs.
3. Triage failures and publish a report in `references/reports/`.

## Commit & Pull Request Guidelines
Current history uses concise, imperative commit messages (for example, `Initial commit`). Continue with:

- Commit format: `<type>: <summary>` preferred (e.g., `docs: add operations checklist`).
- Keep commits focused on a single topic.
- PRs should include: purpose, changed files/folders, and any follow-up tasks.
- Link related issues when available and add screenshots only when visual formatting changes matter.
