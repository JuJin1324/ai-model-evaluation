# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 프로젝트 개요

AI CLI Agent(Claude Code, Codex, Gemini CLI)를 **워크플로우 수행 능력** 기준으로 평가하는 프레임워크.
코딩 능력이 아닌 **2W1H(Why→What→How) 워크플로우 이해와 설계 능력**을 측정한다.

## 핵심 구조

- `evaluation/input/` — 평가 대상 모델에게 제공하는 철학 문서 (`philosophy.md`)
- `evaluation/prompt.md` — 모든 모델에게 동일하게 주는 프롬프트
- `evaluation/rubric.md` — 80점 만점 채점 루브릭 (프로세스 30점 + 결과물 50점)
- `evaluation/templates/` — 평가 문서 템플릿 (`eval-notes-template.md`, `eval-scoring-template.md`)
- `evaluation/output/{모델명}/` — 평가 실행 중 생성되는 산출물 (스킬, 채점 문서, 관찰 노트)
- `evaluation/result-template.md` — 최종 결과 기록 템플릿
- `results/` — 모델별 최종 평가 결과 및 `comparison-summary.md`
- `docs/reference/` — 각 AI 에이전트 스킬 시스템 레퍼런스 문서

## 평가 실행 흐름

1. `test-skill-baseline` 브랜치에서 `eval/{모델명}` 브랜치 생성 (이전 산출물 오염 방지)
2. 모델에게 `evaluation/input/philosophy.md` 제공 후 동일 프롬프트 실행
3. 모델 산출물(스킬)을 `evaluation/output/{모델명}/skills/`로 보존
4. `evaluation/rubric.md` 기준으로 `evaluation/output/{모델명}/eval-scoring.md`에 채점
5. `evaluation/result-template.md` 양식으로 `results/{모델명}-eval-result.md`에 결과 기록
6. 신규 모델 평가 완료 시 `results/comparison-summary.md` 갱신

> `/run-eval [모델명]` 스킬이 위 흐름 전체를 가이드한다.

## 스킬

- `/run-eval [모델명]` — 평가 셋업(브랜치 격리 포함) → 채점 안내 → 결과 기록 전 과정 가이드
- `/update-skill-reference [에이전트명 또는 all]` — `docs/reference/` 레퍼런스 문서를 공식 문서와 대조하여 최신화

## 작업 시 주의사항

- **evaluation/input/ 파일은 평가 입력물** — 수정 요청 없이 변경하지 말 것
- **evaluation/rubric.md와 prompt.md는 평가 기준** — 임의 변경 시 평가 무결성이 훼손됨
- **평가는 반드시 격리 브랜치에서 실행** — `test-skill-baseline` 기준 브랜치로부터 분기, 이전 모델 산출물 오염 방지
- 평가 결과는 반드시 `results/` 디렉토리에 기록
- 프로젝트 문서는 모두 한국어로 작성
- 이 프로젝트는 코드 프로젝트가 아닌 **문서 기반 평가 프레임워크** — 빌드/테스트/린트 시스템 없음

## 2W1H 방법론 핵심

이 프로젝트의 평가 기준이 되는 방법론:
- **Why/What 먼저** — How(구현)에 뛰어들기 전에 맥락과 문제 정의 선행
- **질문 → 확인 → 실행** — 실행 전 반드시 확인을 거치는 프로세스
- **문서 안전성** — 기존 파일을 덮어쓰지 않는 것이 중요한 평가 항목
