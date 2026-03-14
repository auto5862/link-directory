# Green Point — API 등록 가이드

**배포 후 반드시 진행. 토큰 평판·신뢰도에 도움.**

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
| 5 | 생성된 키 복사 → `.env` 또는 로컬 비밀 파일에 저장 |
| 6 | **절대 GitHub·문서·공개 글에 키 넣지 않음** |

---

## 3. 제출 시 사용할 문구 (키 없이)

토큰 평판 업데이트, 문의하기 등에서 **키 값은 넣지 말고** 아래만 사용:

```
Security monitoring is actively enabled for token/account/transaction risk checks.
API credentials are managed privately.
```

---

## 4. 체크리스트

| # | 확인 |
|---|------|
| ☐ | TronScan API Keys에서 키 생성 |
| ☐ | 키를 `.env` 등 비공개 저장 |
| ☐ | GitHub·문서에 키 노출 없음 |
| ☐ | 토큰 평판 제출 시 위 문구 포함 |
