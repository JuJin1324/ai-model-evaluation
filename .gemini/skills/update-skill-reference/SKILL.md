---
name: update-skill-reference
description: 평가 전 스킬 레퍼런스 문서를 최신 상태로 업데이트한다. 각 AI 에이전트의 공식 문서를 확인하고 변경사항을 반영한다.
argument-hint: [에이전트명 (claude-code, gemini-cli, codex) 또는 all]
allowed-tools: Read, Edit, Glob, WebSearch, WebFetch, AskUserQuestion
---

# 스킬 레퍼런스 업데이트

평가 전에 `docs/reference/` 의 레퍼런스 문서가 최신 공식 문서와 일치하는지 확인하고 업데이트한다.

`$ARGUMENTS`에서 대상 에이전트를 추출한다. `all`이면 세 에이전트 모두, 특정 에이전트명이면 해당 문서만 업데이트한다. 인자가 없으면 사용자에게 물어본다.

---

## 대상 문서와 공식 문서 URL

| 에이전트 | 레퍼런스 파일 | 공식 문서 URL |
|----------|-------------|---------------|
| Claude Code | `docs/reference/claude-code-skill-reference.md` | https://code.claude.com/docs/en/skills.md |
| Gemini CLI | `docs/reference/gemini-cli-skill-reference.md` | https://geminicli.com/docs/cli/skills/, https://geminicli.com/docs/cli/creating-skills/ |
| Codex | `docs/reference/codex-skill-reference.md` | https://developers.openai.com/codex/skills/ |

---

## 업데이트 절차

대상 에이전트마다 아래 단계를 수행한다:

### Step 1: 현재 레퍼런스 읽기

해당 레퍼런스 파일을 읽어서 현재 내용과 `마지막 확인일`을 파악한다.

### Step 2: 공식 문서 확인

위 표의 공식 문서 URL을 WebFetch로 가져와서 현재 레퍼런스와 비교한다. 확인할 항목:

- SKILL.md frontmatter 필드에 변경/추가된 것이 있는가?
- 새로운 도구가 추가되었는가?
- 디렉토리 구조나 스코프에 변경이 있는가?
- 변수/인자 전달 방식에 변경이 있는가?
- 새로운 기능이 추가되었는가?

### Step 3: 변경사항 보고

확인 결과를 사용자에게 보고한다:

- **변경 없음**: "공식 문서와 일치합니다. 변경사항 없음." 안내
- **변경 있음**: 변경된 항목을 목록으로 표시하고, 어떻게 반영할지 사용자에게 확인

변경사항은 반드시 사용자 확인 후에만 반영한다. 자동으로 덮어쓰지 않는다.

### Step 4: 레퍼런스 업데이트

사용자가 승인한 변경사항을 레퍼런스 문서에 반영한다:

- Edit 도구로 변경된 섹션만 수정한다 (Write로 전체 덮어쓰기 금지)
- 기존 문서의 구조(섹션 번호, 형식)를 유지한다
- `마지막 확인일`을 오늘 날짜로 업데이트한다

### Step 5: 변경 요약

모든 대상 에이전트의 업데이트가 끝나면 최종 요약을 제공한다:

```
업데이트 요약:
- Claude Code: 변경 없음 / N개 항목 업데이트
- Gemini CLI: 변경 없음 / N개 항목 업데이트
- Codex: 변경 없음 / N개 항목 업데이트
마지막 확인일: YYYY-MM-DD
```

---

## 주의사항

- 레퍼런스 문서의 **공통 섹션 구조(1~7번)를 변경하지 않는다** — 세 문서의 형식 통일이 깨짐
- 고유 기능(8번) 섹션은 해당 에이전트 문서만 수정
- 공식 문서에서 확인된 내용과 확인되지 않은 내용을 구분하여 반영
- 불확실한 내용은 사용자에게 판단을 요청
