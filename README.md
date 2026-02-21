# AI Model Evaluation Project

이 저장소는 **AI 모델 평가 설계/실행/분석**을 위한 문서와 스킬을 관리합니다.

## 현재 기준 구조

- 핵심 문서: `2w-brainstorm.md`, `how-diagram.md`
- 스킬: `skills/`
  - `eval-test-design`
  - `eval-failure-triage`
- AI 평가 전용 레퍼런스: `references/ai-model-evaluation/`
  - `planning/` : 테스트 매트릭스 템플릿
  - `reports/` : 모델 평가/실패 triage 리포트 템플릿
  - `operations/` : 실행 플레이북

## 평가 축 (기본)

- 품질: 정확도/일관성/환각률
- 효율: 지연시간/토큰 사용량/비용
- 안정성: 재현성, 실패 패턴, 회귀 여부
- 운영성: 로그 품질, 원인 분석 가능성

## 레거시 참고 자료

`references/concurrency-control-poc/`는 과거 동시성 제어 프로젝트 아카이브입니다.  
현재 AI 모델 평가 기준 문서로는 사용하지 않고, 문서 구성 방식 참고용으로만 취급합니다.
