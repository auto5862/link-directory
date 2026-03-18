# USDTBridge 배포 가이드 — 상대 지갑에 공식 테더로 입금

## 목적

우리 USDT를 보내면 **상대 지갑에 공식 USDT**로 들어가게 함. (토큰 추가 불필요)

---

## 1. 필요한 것

- **공식 USDT** (TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t) — 브릿지에 예치
- TRX (배포·예치 수수료)
- TronIDE 또는 TronBox

---

## 2. 배포

1. [TronIDE](https://www.tronide.io) 또는 TronStudio 접속
2. **USDTBridge.sol** 열기
3. **Compile** → **Deploy**
4. Constructor 인자:
   - `_ourUSDT`: `TGacvY1cTSLKgWEPxXqWt8FFAQ86vpzM1U`
   - `_officialUSDT`: `TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t`
5. 배포 후 **컨트랙트 주소** 복사

---

## 3. 공식 USDT 예치

1. TronLink에서 **공식 USDT** approve (브릿지 주소, 예치할 양)
2. 브릿지 컨트랙트 `depositOfficial(amount)` 호출
   - amount: 1 USDT = 1000000 (decimals 6)

---

## 4. usdt-bridge.html 사용

1. **브릿지 주소** 입력
2. **받을 주소** 입력
3. **금액** 입력
4. **1단계: 우리 USDT 승인** 클릭
5. **2단계: 공식 USDT로 전환 & 전송** 클릭

→ 상대 지갑에 **공식 USDT** 입금됨
