# Energy 대여 — 정확한 절차

**어디 가서, 뭘 하는지 순서대로.**

---

## 왜 하는가?

SunSwap 유동성 풀 생성 시 **가스비(Energy)** 가 많이 듭니다.  
Energy를 미리 대여해 두면, TRX를 700개 넘게 쓰지 않고도 풀 생성이 될 수 있습니다.

---

## 절차 (순서대로)

### 1단계: Energy 대여 사이트 접속

- **주소:** https://tronpoolenergy.com/rent-energy/
- 브라우저에서 위 주소 입력 후 접속

---

### 2단계: TRX 받을 주소 확인

- 페이지에 **"Top up this wallet"** 또는 **"TRX를 보낼 주소"** 같은 문구와 함께 **TRON 주소**가 표시됨
- **QR 코드** 옆에 주소가 있음
- 그 주소를 **복사**해서 메모장에 붙여넣기 (또는 따로 적어두기)

---

### 3단계: TronLink에서 TRX 보내기

1. **TronLink** 지갑 열기
2. **Send(전송)** 또는 **TRX 전송** 클릭
3. **받는 주소:** 2단계에서 복사한 주소 붙여넣기
4. **금액:** 3 TRX 또는 6 TRX (또는 9, 12, 15...)  
   - **3 TRX** = Energy 65,000 (1시간)
   - **6 TRX** = Energy 131,000 (1시간)
   - **풀 생성**은 Energy를 많이 쓰므로 **9 TRX 또는 12 TRX** 권장
5. **전송** 확인

---

### 4단계: Energy 자동 연결

- TRX 전송이 **확인(confirmed)** 되면
- Energy가 **자동으로** 본인 지갑(TRX를 보낸 지갑)에 연결됨
- 별도 로그인, 주소 입력 없음

---

### 5단계: 1시간 내에 SunSwap 풀 생성

1. **https://sunswap.com/#/add** 접속
2. TronLink로 **Connect Wallet** (같은 지갑 사용)
3. TRX + GRP 입력
4. **Supply** 클릭 → TronLink에서 확인

---

## 요약

| 순서 | 어디 | 뭘 함 |
|------|------|-------|
| 1 | https://tronpoolenergy.com/rent-energy/ | 접속 |
| 2 | 같은 페이지 | TRX 받을 주소 복사 |
| 3 | TronLink | 그 주소로 9~12 TRX 전송 |
| 4 | (자동) | Energy가 내 지갑에 연결됨 |
| 5 | https://sunswap.com/#/add | 풀 생성 시도 |

---

## 주의

- Energy는 **1시간**만 유효
- TRX 전송 후 **바로** SunSwap에서 풀 생성 진행
- 3 TRX 단위로만 보낼 수 있음 (3, 6, 9, 12...)
