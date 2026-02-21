# AI Model Evaluation Project

이 디렉터리는 기존 `ai-model-evaluation` 문서를 기반으로, 동시성 제어 PoC의 검증된 문서 패턴을 재사용하기 위해 구성했습니다.

## 기본 문서 (기존 프로젝트에서 복사)

- `questions.md`
- `questions-followup.md`
- `2w-brainstorm.md`
- `how-diagram.md`

## 참고 문서 (concurrency-control-poc/docs에서 선별 복사)

### 1) 기획/구조화 참고
- `references/concurrency-control-poc/planning/2w-brainstorm.md`
  - 문제 재정의(What/Why) 전개 방식 참고
- `references/concurrency-control-poc/planning/how-diagram.md`
  - 단계별 실행 흐름 + 다이어그램 구조 참고

### 2) 평가 결과 문서화 템플릿
- `references/concurrency-control-poc/reports/test-report-template.md`
  - 테스트 목적, 조건, 실행, 지표, 결론 템플릿 참고

### 3) 운영/의사결정 문서 템플릿
- `references/concurrency-control-poc/operations/TEMPLATE.md`
  - 기술별 운영 가이드 문서 골격 재사용
- `references/concurrency-control-poc/operations/PRACTICAL_GUIDE.md`
  - 의사결정 트리/매트릭스 표현 방식 참고

## 선별 기준

- AI 모델 평가 프레임워크 설계에 바로 재사용 가능한 문서
- 특정 동시성 구현 세부사항(DB/Redis 내부 동작)보다, 문서화 구조/평가 템플릿 중심
- 향후 모델 비교 결과를 반복 기록할 수 있는 형식 우선
