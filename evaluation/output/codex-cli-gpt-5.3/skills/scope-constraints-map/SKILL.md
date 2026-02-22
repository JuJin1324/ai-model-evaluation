---
name: scope-constraints-map
description: 2W 결과를 입력으로 받아 제약 조건을 확정하고 In/Out Scope를 고정한 뒤 Mermaid로 범위를 시각화한다. 사용자가 "범위 확정", "제약 확인", "스코프 다이어그램"을 요청할 때 사용한다.
argument-hint: [없으면 docs/agile/2w1h-narrative.md 사용]
allowed-tools: Read, Write, Edit, Glob, AskUserQuestion
---

# 제약-범위 시각화 스킬

## 목적

2W를 실행 가능한 범위로 전환한다.

## 입력 계약

- 필수 입력 파일: `docs/agile/2w1h-narrative.md`
- 사용자 추가 제약(있으면 반영)

입력 파일이 없으면 생성 요청을 중단하고 `2w-discovery` 실행을 안내한다.

## 출력 계약

- `docs/agile/scope-map.md`
- `docs/agile/2w1h-narrative.md`의 제약/범위 섹션 보강
- 완료 조건: 시간/인원/완성도/제외범위가 확정되고 Mermaid 렌더링 가능한 상태

## 절차

1. 제약 4가지를 확정한다.
- 시간: 마감일/가용시간
- 인원: 참여자/역할
- 품질: MVP/운영급 기준
- 제외 범위: 이번 스프린트에서 하지 않을 것

2. In Scope / Out of Scope를 분리해 `docs/agile/2w1h-narrative.md`에 반영한다.

3. `docs/agile/scope-map.md`에 Mermaid 다이어그램을 작성한다.
- 필수 노드: 입력(Why/What, 제약), In Scope, Out of Scope, DoD
- 필수 연결: 입력 -> In Scope -> DoD, 입력 -> Out of Scope

4. 사용자 확인을 받는다.
- 확인 문구: "범위가 확정되면 다음 스킬(`sprint-execution`)로 계획/실행 문서를 생성하겠습니다."

## 중단 규칙

- 제약 미확정 상태에서는 백로그/일정 작성을 시작하지 않는다.
- 모호한 용어가 남아 있으면 다이어그램 작성을 보류하고 재질문한다.
