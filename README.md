# AI 모델 평가 프로젝트 (MVP)

AI CLI Agent(Claude Code / Codex / Gemini CLI)를 **워크플로우 기준**으로 평가하는 반복 실행 가능한 프레임워크.

## 핵심 아이디어

- 코딩 능력은 상향 평준화 → 차별화 없음
- **워크플로우 이해 + 설계 능력**이 진짜 차별점
- 평가 태스크: "철학 문서만 주고 애자일 프로세스 스킬을 설계하게 한다"

## 디렉토리 구조

```
ai-model-evaluation/
├── README.md                              # 이 파일
├── docs/                                  # 브레인스토밍 기록 (problem-solving에서 복사)
│   ├── questions.md                       # 1차 질문지
│   ├── questions-followup.md              # 추가 질문지
│   ├── 2w-brainstorm.md                   # 2W 정의
│   └── mvp-how-diagram.md                 # MVP How 구조화
├── evaluation/                            # 평가 도구
│   ├── input/                             # 모델에게 줄 입력 (철학 문서)
│   │   ├── CLAUDE.md
│   │   └── problem-solving-principles.md
│   ├── prompt.md                          # 동일 프롬프트
│   ├── rubric.md                          # 채점 루브릭 (30점)
│   └── result-template.md                 # 결과 기록 템플릿
└── results/                               # 모델별 평가 결과
```

## 평가 방법

1. 각 모델에게 `evaluation/input/` 의 철학 문서 제공
2. `evaluation/prompt.md`의 동일 프롬프트 실행
3. `evaluation/rubric.md` 기준으로 채점
4. `results/`에 결과 기록

## 채점 (30점 만점)

| 구분 | 항목 | 배점 |
|------|------|------|
| 프로세스 | 상황 파악 | 5점 |
| 프로세스 | 설계 논의 | 5점 |
| 프로세스 | 기존 패턴 참고 | 5점 |
| 결과물 | 스킬 완성도 | 5점 |
| 결과물 | 시각화 | 5점 |
| 결과물 | 맥락 적합성 | 5점 |

비용은 점수에 포함하지 않고 별도 비교.
