# Green Point (GRP) — Sun Pump 완전 가이드 (들어가는 곳·적는 곳 전부)

**어디로 들어가고, 뭘 클릭하고, 뭘 적는지 전부.**

---

# 1. API에 대해

**Q: API는 뭐 안 했는데 그냥 둬도 되나요?**

- **Sun Pump·TronScan 배포·Record Token·Update Token** → API **필수 아님**
- API는 **토큰 모니터링·문의 시 "보안 모니터링 중"**이라고 말할 때 쓰는 **선택 사항**
- `.env`에 `TRONSCAN_API_KEY`가 이미 있으면 → **그대로 두면 됨**
- 없어도 토큰 배포·Sun Pump 론치는 **문제 없음**

**직접 API 키 만들고 싶을 때:**
1. https://tronscan.org/#/myaccount/apiKeys 접속
2. 로그인 → **Create API Key** 클릭
3. 앱 이름: `greenpoint-monitor`
4. 생성된 키를 `.env`의 `TRONSCAN_API_KEY=` 뒤에 붙여넣기

---

# 2. Sun Pump — 들어가는 곳

## 2-1. 접속

1. 브라우저 주소창에 입력:
   ```
   https://sunpump.meme
   ```
2. **Enter**
3. Sun Pump 메인 페이지 로드

---

## 2-2. 지갑 연결

1. 페이지 **우측 상단**에서 **Connect Wallet** 버튼 찾기
2. **Connect Wallet** 클릭
3. **TronLink** 선택
4. TronLink 팝업에서 **연결** / **Connect** 클릭
5. 연결되면 주소가 표시됨 (예: `TVMfv...LpRYrFm`)

**필요 TRX:** 최소 **20 TRX** 이상 (생성 수수료)

---

## 2-3. Launch 페이지로 이동

1. 상단 메뉴에서 **Launch** 또는 **Create** 클릭
2. 또는 메인에 **Launch Token** / **Create Token** 버튼이 있으면 클릭
3. 토큰 생성 폼 페이지로 이동

---

# 3. Sun Pump — 적는 곳 (기입란)

폼에 나오는 필드에 아래 값을 **그대로 복사해서 붙여넣기**.

| 기입란 (영문) | 입력값 (복사) |
|---------------|----------------|
| **Token Name** / **Name** | `Green Point` |
| **Ticker Symbol** / **Symbol** | `GRP` |
| **Description** / **Token Description** | `Green Point (GRP) — TRON TRC20. Community project. Website, Telegram, Whitepaper, Audit.` |
| **Website** / **Project Website** | `https://auto5862.github.io/link-directory/green-point.html` |
| **Telegram** | `https://t.me/GreenPoint_GRP` |
| **Twitter** / **X** | (비움) |
| **Image** / **Token Image** | **Upload** 클릭 → `GreenPoint_logo_512x512.png` 선택 (선택, 4MB 이하) |

---

# 4. Sun Pump — 제출·결제

1. 모든 기입란 입력 확인
2. **Launch** / **Create Token** / **Deploy** 버튼 클릭
3. TronLink 팝업 → **약 20 TRX** 결제 확인
4. **Confirm** / **확인** 클릭
5. 트랜잭션 처리 완료 후 → 토큰 생성됨
6. 생성된 토큰 페이지에서 **즉시 거래 가능**

---

# 5. URL·클릭 순서 요약

| # | 할 일 | 위치 |
|---|-------|------|
| 1 | https://sunpump.meme 접속 | 주소창 |
| 2 | **Connect Wallet** 클릭 | 우측 상단 |
| 3 | TronLink 연결 | 팝업 |
| 4 | **Launch** / **Create Token** 클릭 | 상단 메뉴 또는 메인 |
| 5 | Token Name, Symbol, Description 등 입력 | 폼 |
| 6 | **Launch** / **Create** 클릭 | 폼 하단 |
| 7 | 20 TRX 결제 확인 | TronLink |

---

# 6. 복사용 텍스트 (한 번에)

```
Green Point
```
```
GRP
```
```
Green Point (GRP) — TRON TRC20. Community project. Website, Telegram, Whitepaper, Audit.
```
```
https://auto5862.github.io/link-directory/green-point.html
```
```
https://t.me/GreenPoint_GRP
```

---

# 7. 주의사항

- Sun Pump에서 만든 Green Point = **TronScan 배포와 다른 토큰** (컨트랙트 주소 다름)
- TronScan Green Point: Burn·Lock 있음
- Sun Pump Green Point: Burn·Lock 없음, Sun Pump·SunSwap 내 거래용
- 시총 **$69,420** 도달 시 SunSwap V2에 유동성 자동 투입
