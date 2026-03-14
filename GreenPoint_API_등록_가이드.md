# Green Point — API 등록 가이드

**언제:** **지금 바로.** (나중에 까먹지 말 것)

**코드 반영:** 필요 없음. TronScan에서 키만 생성하고 `.env`에 저장하면 됨. 문의/제출 시 "Security monitoring enabled" 문구만 사용.

---

## 1. 왜 필요한가

| 목적 | 설명 |
|------|------|
| 토큰 평판 | "보안 모니터링 운영 중" 증빙 |
| 문의 제출 시 | 간략 설명에 "Security monitoring enabled" 기재 가능 |
| 사기 의심 방지 | 모니터링·대응 체계 있음을 보여줌 |

---

## 2. 등록 절차 (5분)

| # | 할 일 |
|---|-------|
| 1 | https://tronscan.org 접속 → 로그인 |
| 2 | https://tronscan.org/#/myaccount/apiKeys 이동 |
| 3 | **애플리케이션 이름** 입력: `greenpoint-monitor` |
| 4 | **API 키 생성** 클릭 |
| 5 | 생성된 키 복사 → **`.env`** 파일의 `TRONSCAN_API_KEY=` 뒤에 붙여넣기 |
| 6 | `.env`는 `.gitignore`에 있음 → **GitHub에 안 올라감** (키 비공개 유지) |
| 7 | **절대 GitHub·문서·공개 글에 키 넣지 않음** |

---

## 3. 제출 시 사용할 문구 (키 없이)

토큰 평판 업데이트, 문의하기 등에서 **키 값은 넣지 말고** 아래만 사용:

```
Security monitoring is actively enabled for token/account/transaction risk checks.
API credentials are managed privately.
```

---

## 4. .env 저장 (로컬에 이미 있음)

`c:\Users\hosuk\link-directory\.env` 파일에 아래 형식으로 저장:

```
TRONSCAN_API_KEY=여기에_TronScan에서_생성한_키_붙여넣기
```

- `.env`는 GitHub에 올라가지 않음 (.gitignore)
- `.env.example`은 템플릿만 (키 없음) → GitHub에 있음

---

## 5. 체크리스트

| # | 확인 |
|---|------|
| ☐ | TronScan API Keys에서 키 생성 |
| ☐ | `.env`에 `TRONSCAN_API_KEY=키` 저장 |
| ☐ | GitHub·문서에 키 노출 없음 |
| ☐ | 토큰 평판 제출 시 위 문구 포함 |
