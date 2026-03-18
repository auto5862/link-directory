# Sun Pump USDT (TeatherUSD) 상장 — 꼼꼼 가이드

**순서대로 하나씩.**

---

## 0. 상장 전 확인

| # | 확인 | 상태 |
|---|------|------|
| 1 | TRX 20개 이상 | [ ] |
| 2 | TronLink 설치·백업 | [ ] |
| 3 | 웹사이트 접속 확인: https://auto5862.github.io/link-directory/usdt-sunpump.html | [ ] |
| 4 | 이미지 100×100 PNG 준비 (USDT_TeatherUSD_logo_100x100.png) | [ ] |
| 5 | 텔레그램 채널: USDT TeatherUSD Official → URL 확보 | [ ] |

---

## 1. 접속

1. 브라우저에서 **https://sunpump.meme** 접속
2. 우측 상단 **Connect Wallet** 클릭
3. **TronLink** 선택 → 지갑 연결 (서명 승인)

---

## 2. Launch 버튼

1. 상단 메뉴에서 **Launch** 클릭
2. Launch 폼(입력 화면)이 열림

---

## 3. 기입란 — 순서대로

### 3-1. Token Name (토큰 이름)

| 기입란 | 입력값 |
|--------|--------|
| **Token Name** | `USDT (TeatherUSD)` |

→ **복사해서 붙여넣기.** 띄어쓰기·괄호 정확히.

---

### 3-2. Ticker Symbol (심볼)

| 기입란 | 입력값 |
|--------|--------|
| **Ticker Symbol** | `USDT` |

→ 대문자 USDT.

---

### 3-3. Description (설명)

| 기입란 | 입력값 |
|--------|--------|
| **Description** | `USDT (TeatherUSD). TRON TRC-20. decimals 6. 온체인 검증. 탈중앙화 달러 페그. Sun Pump · SunSwap.` |

→ **팩트 기반:** 표준·decimals·검증·플랫폼 한 줄에.

---

### 3-4. Website (웹사이트)

| 기입란 | 입력값 |
|--------|--------|
| **Website** | `https://auto5862.github.io/link-directory/usdt-sunpump.html` |

→ **http 없이 https** 그대로.

---

### 3-5. Telegram (텔레그램)

| 기입란 | 입력값 |
|--------|--------|
| **Telegram** | `https://t.me/USDT_TeatherUSD_Official` |

→ 채널 Username이 다르면 본인 채널 URL로 변경.

---

### 3-6. Twitter (선택)

| 기입란 | 입력값 |
|--------|--------|
| **Twitter** | (비워둬도 됨) |

---

### 3-7. Image (이미지)

| 기입란 | 입력값 |
|--------|--------|
| **Image** | **Upload** 클릭 → `USDT_TeatherUSD_logo_100x100.png` 선택 |

→ 100×100 PNG. 없으면 비워둬도 됨.

---

## 4. Launch 실행

1. 모든 기입란 확인
2. **Launch** 버튼 클릭
3. TronLink 팝업 → 결제 금액 확인 (~20 TRX)
4. **Confirm** 클릭
5. 트랜잭션 완료 대기

---

## 5. 완료 후

- 토큰 생성됨
- Sun Pump에서 바로 거래 가능
- **컨트랙트 주소** TronScan에서 확인 → 저장해두기 (SunSwap 풀·믹서용)

---

## 6. 복사용 (한 번에)

```
Token Name: USDT (TeatherUSD)
Ticker Symbol: USDT
Description: USDT (TeatherUSD). TRON TRC-20. decimals 6. 온체인 검증. 탈중앙화 달러 페그. Sun Pump · SunSwap.
Website: https://auto5862.github.io/link-directory/usdt-sunpump.html
Telegram: https://t.me/USDT_TeatherUSD_Official
```

---

## 7. 믹서 기능

| 항목 | 상태 |
|------|------|
| **TokenMixer.sol** | ✅ 코드 있음 (토큰 1개용) |
| **MultiTokenMixer.sol** | ✅ 코드 있음 (USDT + 우리 토큰) |
| **믹서_사용_가이드.md** | ✅ 사용법 문서 있음 |

→ **믹서 배포**는 Sun Pump 상장 **후** 토큰 주소 확보하면 가능.  
→ MultiTokenMixer: _token1=공식USDT, _token2=우리 토큰(상장 후 주소)

**정리:** 믹서 코드·가이드 다 준비됨. 상장 후 주소 넣고 배포하면 됨.
