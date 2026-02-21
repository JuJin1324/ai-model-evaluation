# 평가 프롬프트

**사용법:** 각 모델에게 아래 프롬프트를 동일하게 제공한다.

---

## 사전 준비

1. 평가 대상 모델로 새 프로젝트 디렉토리 열기
2. `evaluation/input/CLAUDE.md`와 `evaluation/input/problem-solving-principles.md`를 프로젝트에 배치
3. 기존 `.claude/skills/` 접근 차단 (없는 상태에서 시작)

## 프롬프트

> (Phase 1에서 확정 예정)
>
> 초안:
> "이 프로젝트의 CLAUDE.md와 problem-solving-principles.md를 읽고,
> 이 철학을 기반으로 2W1H 서사부터 스프린트 실행까지 가능한
> 애자일 프로세스 스킬을 설계하고 만들어줘."

## 제공 컨텍스트

- `CLAUDE.md` (프로젝트 철학 + 디렉토리 구조 + 핵심 작업 흐름)
- `problem-solving-principles.md` (2W1H 원칙 + 실수 패턴 + 범위 산정)

## 차단 항목

- `.claude/skills/` 기존 스킬 접근 불가
- 기존 스킬의 SKILL.md 내용 제공 불가
