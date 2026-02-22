---
name: 2w-discovery
description: philosophy.md 원칙에 따라 Why/What을 먼저 탐색하고 모호한 용어를 해체해 2W 서사를 확정한다. 사용자가 문제 정의, 맥락 정리, "Why/What부터 정리"를 요청할 때 사용한다.
argument-hint: [대상 문제 또는 프로젝트명]
allowed-tools: Read, Write, Edit, Glob, AskUserQuestion
---

# 2W 탐색 스킬

`$ARGUMENTS`에서 대상 문제/프로젝트를 추출한다. 없으면 사용자에게 한 줄로 묻는다.

`evaluation/input/philosophy.md` 또는 루트 `philosophy.md`를 읽고 진행한다.

## 목적

How 제안 전에 Why/What을 고정한다.

## 입력 계약

- 사용자 설명 텍스트
- 철학 문서: `evaluation/input/philosophy.md` 또는 `philosophy.md`

## 출력 계약

- `docs/agile/2w1h-narrative.md`
- 완료 조건: Why/What/성공기준이 문장으로 확정되고, 모호한 용어가 해체됨

## 절차

1. 탐색 질문 3개를 수행한다.
- Why: "왜 지금 해결해야 하는가?"
- What: "이번 사이클에서 무엇을 반드시 바꿀 것인가?"
- 성공 기준: "완료를 어떤 상태로 판단할 것인가?"

2. 모호한 용어를 즉시 해체한다.
- 예: 빠르게, 안정적, 자동화, 대규모, 효율
- 해체 방식: 수치/행동/범위 기준으로 재질문

3. `references/2w1h-narrative-template.md`를 열어 `docs/agile/2w1h-narrative.md`를 작성한다.
- `Why`, `What`, `완료 정의`, `제약 조건 초안`까지 채운다.
- How는 실행 원칙 수준(3줄 이내)만 적는다.

4. 사용자 확인을 받는다.
- 확인 문구: "2W 결과가 맞다면 다음 스킬(`scope-constraints-map`)로 범위를 고정하겠습니다."

## 중단 규칙

- How(기술/구현) 질문이 먼저 나오면 Why/What으로 되돌린다.
- 사용자 확인 없이 범위를 확정하지 않는다.
