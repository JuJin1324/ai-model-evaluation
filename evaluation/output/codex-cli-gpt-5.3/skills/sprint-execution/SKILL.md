---
name: sprint-execution
description: 확정된 2W와 스코프를 기반으로 스프린트 계획, 실행 로그, 리뷰/회고 문서를 만들고 운영한다. 사용자가 "스프린트 계획", "실행 로그", "회고 작성"을 요청할 때 사용한다.
argument-hint: [스프린트 기간 또는 목표]
allowed-tools: Read, Write, Edit, Glob, AskUserQuestion
---

# 스프린트 실행 스킬

## 목적

확정된 범위를 실행 가능한 스프린트 운영 체계로 전환한다.

## 입력 계약

- 필수: `docs/agile/2w1h-narrative.md`
- 필수: `docs/agile/scope-map.md`

필수 입력이 없으면 중단하고 선행 스킬 실행을 안내한다.

## 출력 계약

- `docs/agile/sprint-plan.md`
- `docs/agile/sprint-execution-log.md`
- `docs/agile/sprint-review-retro.md`
- 완료 조건: 목표, 백로그, 일일 로그, 회고 항목이 모두 채워짐

## 절차

1. `references/sprint-execution-template.md`를 열어 3개 문서 골격을 생성한다.

2. `docs/agile/sprint-plan.md`를 작성한다.
- Sprint Goal 1개
- In Scope 기반 백로그(P1~P3)
- 각 백로그에 Why 연결 1줄
- Definition of Done 체크리스트

3. `docs/agile/sprint-execution-log.md` 운영 규칙을 적용한다.
- 매일 시작: 목표 1~3개 선언
- 매일 종료: 완료/미완료/차단요인 기록
- 차단요인 2회 반복 시: 범위 축소 또는 스파이크 태스크 제안

4. 스프린트 종료 시 `docs/agile/sprint-review-retro.md`를 작성한다.
- Goal 대비 결과
- 실패/지연 원인과 재발 방지
- 반복 실수와 원칙 승격 후보
- 다음 스프린트 이월 항목

5. 사용자 확인을 받는다.
- 확인 문구: "운영 문서가 준비되었습니다. 필요하면 다음 스프린트 계획까지 연속으로 확장하겠습니다."

## 중단 규칙

- 범위 문서와 불일치하는 백로그를 만들지 않는다.
- Why 연결이 없는 태스크는 계획에서 제외한다.
