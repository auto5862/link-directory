# 보안 API 운영 체크리스트 (키 비공개)

목적: 토큰 평점/신뢰도 검토 시, "보안 모니터링 운영 중"이라는 증빙을 만들기 위한 내부 문서.

---

## 0) API 먼저 설치 (5분)

1. `https://tronscan.org/#/myaccount/apiKeys` 접속
2. 우측 상단 로그인 확인
3. `애플리케이션 이름` 입력 (예: `greenpoint-monitor`)
4. API 키 생성
5. 키를 로컬 비밀 파일에 저장
   - 파일 예: `.env`
   - 변수 예: `TRONSCAN_API_KEY=...`
6. 키 생성 완료 화면 캡처 (내부 보관용)

---

## 1) 절대 규칙

- API Key/Secret은 문서, 포럼, 깃허브 공개 저장소에 올리지 않는다.
- 키는 `.env` 또는 비공개 시크릿 저장소에서만 관리한다.
- 토큰 정보 업데이트/포럼 글에는 "보안 모니터링 도입"만 기재한다.

---

## 2) 최소 운영 항목

- [ ] 계정/주소 리스크 조회
- [ ] 토큰/컨트랙트 리스크 조회
- [ ] 트랜잭션 리스크 조회
- [ ] 결과 로그 저장 (날짜, 대상, 결과)
- [ ] 이상 징후 발생 시 대응 기록

---

## 2-1) 오늘 바로 할 일 (현재 건 기준)

- [ ] Green Point 컨트랙트 1회 점검 로그 작성
- [ ] 발행자 주소 1회 점검 로그 작성
- [ ] 최근 전송 트랜잭션 3건 점검 로그 작성
- [ ] 결과를 `보안_점검_로그_1차.md`로 저장

---

## 3) 주기

- 일 1회 기본 점검
- 배포/업데이트 직후 추가 점검
- 신고/이슈 발생 시 수시 점검

---

## 4) 제출용 문구 (외부 공개)

아래 문구만 사용하고 키 값은 절대 포함하지 않는다.

```text
Security monitoring is actively enabled for token/account/transaction risk checks.
We continuously review and respond to suspicious activities.
API credentials are managed privately and are never exposed publicly.
```

---

## 5) 내부 기록 템플릿

```text
[Date]
- Target: [address/contract/tx]
- Check type: [account/token/transaction]
- Result: [ok/neutral/suspicious]
- Action: [none/report/update]
- Evidence link: [internal log URL or file path]
```

---

## 6) 운영 증빙으로 인정받기 쉬운 자료

- 주간 점검 리포트 1장 (PDF/MD)
- 이슈 대응 로그 (발견/조치/재확인)
- 커뮤니티 공지(점검 사실, 업데이트 내역)

---

## 7) 실수 방지 체크

- [ ] 공개 글에 API 키, 토큰, 시크릿 누락 없이 제거했는가?
- [ ] 문의하기 제출 전에 링크가 실제로 열리는가?
- [ ] 팀/커뮤니티 채널 최신 활동이 보이는가?

