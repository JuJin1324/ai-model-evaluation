# CLAUDE.md

이 파일은 Claude Code(claude.ai/code)가 이 저장소에서 작업할 때 참고하는 가이드입니다.

## 저장소 목적

이곳은 **문제를 제대로 정의하기 위한 브레인스토밍 작업 공간**입니다.

대부분의 사람들은 일을 하면서 **How(어떻게 구현)**에만 집중합니다. What(무엇)과 Why(왜)는 남이 정해줍니다. 이 저장소는 **스스로 What/Why를 먼저 묻는 습관**을 훈련하는 곳입니다.

## 핵심 철학

### 문제 해결의 함정
- ❌ **How부터 시작**: "MSA로 만들어야지" → 방향을 잃음
- ✅ **What/Why부터 시작**: "대규모 데이터가 정확히 뭐지?" → 문제 재정의
- ✅ **잘못된 접근도 기록**: 실수에서 배운다

### 2W1H 원칙
1. **Why (왜)**: 왜 해야 하는가? (산업/맥락 이해)
2. **What (무엇)**: 무엇을 해결하는가? (문제 정의)
3. **How (어떻게)**: 어떻게 구현하는가? (해결책)

### 2W1H v2.0: 공간-시간 통제
- **2W (What/Why)**: AI가 잘 정리해줌 + (optional) How 초안
- **1H (다이어그램 + Phase)**: 공간 통제(범위) + 논리적 통제(Phase)

**핵심 철학:**
> "일의 방법(How)과 기간(Time)을 알아도 범위(Scope)가 보이지 않으면 불안해진다.
> 모든 업무는 **'다이어그램을 통한 범위의 시각화'**에서 시작하여 주도권을 확보해야 한다."

## 디렉토리 구조

```
problem-solving/
├── .claude/
│   └── skills/
│       ├── 2w-brainstorm/        # 2W 문제 정의
│       ├── 1h-agile-phase/       # 1H 다이어그램 + Phase 구조화
│       └── sprint-start/         # Sprint 실행 (Phase 기반)
├── problems/                      # 문제별 브레인스토밍 기록
│   └── [문제명]/
│       ├── questions.md          # 사용자 답변 (2W)
│       ├── 2w-brainstorm.md      # 2W 프로세스 기록
│       └── how-diagram.md        # 1H 다이어그램 + Phase
├── .agile/                        # Sprint 관리
├── problem-solving-principles.md  # 핵심 원칙 (진화하는 문서)
└── CLAUDE.md                      # 이 파일
```

## 핵심 작업 흐름 (2W1H Pipeline)

```
[전체 파이프라인]
/2w-brainstorm → What/Why 정리 + (optional) How 초안
        ↓
/1h-agile-phase → 다이어그램(범위) + Phase(단계) + 지표(평가)
        ↓
/sprint-start   → Phase를 Sprint로 변환하여 실행
```

**관심사의 분리:**
- 2W만 필요할 때 → `/2w-brainstorm`만 사용
- 구조화만 필요할 때 → `/1h-agile-phase`만 사용
- 실행만 필요할 때 → `/sprint-start`

### 1. 2W: 문제 정의 (`/2w-brainstorm`)
사용자가 새로운 문제/프로젝트를 이야기할 때:

**스킬이 하는 일:**
1. **What/Why 질문**: 문제 정의 및 목적 파악
2. **모호한 용어 해체**: 구체화
3. **제약 조건 확인**: 시간/협업/완성도
4. **문서화**: `questions.md` + `2w-brainstorm.md`
5. **→ `/1h-agile-phase` 안내**

### 2. 1H: 구조화 (`/1h-agile-phase`)
How를 다이어그램과 논리적 단계(Phase)로 구조화:

**스킬이 하는 일:**
1. **다이어그램 생성**: 범위 시각화 (In/Out/Deferred)
2. **Phase 정의**: 논리적 실행 순서 수립
3. **지표 정의**: 평가 기준
4. **문서화**: `how-diagram.md`

### 3. 실행 (`/sprint-start`)
구조화된 Phase를 실제 Sprint로 실행:

**스킬이 하는 일:**
1. **Phase 선택**: `how-diagram.md`에서 실행할 Phase 선택
2. **Sprint 계획**: Sprint Goal 및 Task 제안
3. **Sprint 시작**: `.agile/sprints/` 생성

## 스킬 구성

### `/2w-brainstorm`
`.claude/skills/2w-brainstorm/SKILL.md`
- **범위:** What/Why 정리 + 제약조건 확인
- **결과물:** `questions.md`, `2w-brainstorm.md`

### `/1h-agile-phase`
`.claude/skills/1h-agile-phase/SKILL.md`
- **범위:** How 구조화 (다이어그램 + Phase)
- **결과물:** `how-diagram.md`

### `/sprint-start`
`.claude/skills/sprint-start/SKILL.md`
- **범위:** Sprint 실행 계획 수립
- **결과물:** `.agile/sprints/sprint-N/plan.md`

## 사고 패턴

### 보편 ↔ 구체 순환
- **모르는 분야**: 보편(산업 이해) → 구체(사례 적용)
- **아는 분야**: 구체(현상 분석) → 보편(패턴 발견)

### DDD/SoC 연결
- **문제 공간 (What/Why)**: 무엇을 해결할 것인가? (도메인)
- **해결 공간 (How)**: 어떻게 구현할 것인가? (기술)

## AI의 역할

### 항상 할 것
- ✅ What/Why를 계속 물어라
- ✅ 모호한 용어를 구체화하도록 유도
- ✅ How 함정을 감지하고 멈춰라
- ✅ 사고 과정을 투명하게 기록

### 하지 말 것
- ❌ 바로 솔루션 제안하지 마라
- ❌ How부터 이야기하지 마라
- ❌ 사용자의 첫 접근을 그대로 받아들이지 마라

## 진화 방향

### 학습 루프
1. **문제 해결**: 2W1H 프로세스 진행
2. **회고**: `2w-brainstorm.md`에 교훈 기록
3. **패턴 발견**: 반복되는 실수 3회 이상 시
4. **원칙 승격**: `problem-solving-principles.md`에 공식 룰 추가

## 중요 사항

- 한국어 저장소입니다
- 브레인스토밍/사고 과정 기록이 목적 (코드 없음)
- Git 작업은 수동으로 진행
- **실수도 투명하게 기록** (학습 자료)