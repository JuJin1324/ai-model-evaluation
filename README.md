# AI 모델 평가 프로젝트

AI CLI Agent(Claude Code / Codex / Gemini CLI)를 **워크플로우 기준**으로 평가하는 반복 실행 가능한 프레임워크.

## 핵심 아이디어

- 코딩 능력은 상향 평준화 → 차별화 없음
- **워크플로우 이해 + 설계 능력**이 진짜 차별점
- 평가 태스크: "철학 문서만 주고 애자일 프로세스 스킬을 설계하게 한다"

## 현재 평가 결과

| 순위 | 모델 | 프로세스 (/30) | 결과물 (/50) | 총점 (/80) |
|------|------|---------------|-------------|-----------|
| 1 | Claude Code Opus 4.6 | 23 | 30 | **53** |
| 2 | Claude Code Sonnet 4.6 | 16 | 28 | **44** |
| 3 | Gemini CLI 3 Pro/Flash | 10 | 21 | **31** |
| 4 | Codex CLI GPT-5.3 | 11 | 17 | **28** |

→ 상세 비교: [`results/comparison-summary.md`](results/comparison-summary.md)

## 채점 기준 (80점 만점)

| 구분 | 항목 | 배점 |
|------|------|------|
| 프로세스 | 상황 파악 | 10점 |
| 프로세스 | 설계 논의 | 10점 |
| 프로세스 | 기존 패턴 참고 | 10점 |
| 결과물 | 제안 독창성 | 10점 |
| 결과물 | 문서 안전성 | 10점 |
| 결과물 | 맥락 적합성 | 10점 |
| 결과물 | 터미널 환경 자각 | 10점 |
| 결과물 | UX 선택권 제공 | 10점 |

비용은 점수에 포함하지 않고 별도 기록.

## 평가 실행

```
/run-eval [모델명]  # 예: /run-eval "Codex CLI o4-mini"
```

스킬이 브랜치 격리(`test-skill-baseline` → `eval/{slug}`) → 평가 실행 → 채점 → 결과 기록 전 과정을 가이드한다.

## 디렉토리 구조

```
ai-model-evaluation/
├── evaluation/
│   ├── input/                     # 모델에게 줄 입력 (philosophy.md)
│   ├── templates/                 # 평가 문서 템플릿
│   ├── output/{모델명}/            # 평가 산출물 (스킬, 채점, 관찰 노트)
│   ├── prompt.md                  # 동일 프롬프트
│   ├── rubric.md                  # 채점 루브릭
│   └── result-template.md         # 최종 결과 템플릿
├── results/                       # 모델별 최종 평가 결과
│   └── comparison-summary.md      # 전체 모델 비교
├── docs/
│   ├── reference/                 # 에이전트 스킬 시스템 레퍼런스
│   └── ...                        # 브레인스토밍 기록
└── .claude/skills/                # run-eval, update-skill-reference
```
