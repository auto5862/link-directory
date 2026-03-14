# 우리 USDT → TRX → XRP/ETH 절차

---

## 전체 경로

```
우리 USDT → (SunSwap) → TRX → (거래소) → XRP 또는 ETH
```

---

## 1단계: SunSwap 유동성 풀 (선행 작업)

**우리 USDT ↔ TRX 풀이 있어야 스왑 가능.**

### 1-1. 시세 조회
- coinmarketcap.com 또는 coingecko.com
- TRX 당일 가격 확인 (예: $0.28)
- 비율: 1 USDT = 1 ÷ TRX가격 TRX

### 1-2. SunSwap Add Liquidity
1. https://sunswap.com 접속
2. **Add Liquidity** 클릭
3. **Select a token** → "Manage Token List" 또는 토큰 검색창에 **우리 USDT 컨트랙트 주소** 붙여넣기 (T로 시작)
4. TRX + 우리 USDT 수량 입력 (시세 비율)
5. 트랜잭션 승인

※ SunSwap에 풀이 없으면 스왑 불가. **반드시 선행 작업**

---

## 2단계: 우리 USDT → TRX 스왑 (상대가 할 일)

### ⚠️ 전제: 상대 지갑에 TRX 필요
- SunSwap 스왑 시 **트랜잭션 수수료**(에너지/대역폭)로 TRX 소모
- TRX가 0이면 스왑 트랜잭션 실행 불가
- **해결:** 보내는 쪽이 USDT와 함께 **소량 TRX**(예: 10~20 TRX)를 같이 보내거나, 상대가 미리 TRX 보유

### 절차
1. SunSwap 접속
2. **Swap** 선택
3. From: **우리 USDT** (컨트랙트 주소로 추가)
4. To: **TRX**
5. 수량 입력 → Swap → Sign

---

## 3단계: TRX → 거래소 → XRP/ETH

### 3-1. TRX 거래소 입금
1. 거래소(바이낸스 등) 가입
2. TRX 입금 주소 복사 (TRON 네트워크 선택)
3. TronLink에서 TRX → 거래소 입금 주소로 전송

### 3-2. 거래소에서 교환
1. TRX → XRP 또는 TRX → ETH 거래
2. 출금 주소 입력 후 출금

### 3-3. 수수료
- SunSwap 스왑 수수료
- TRX 전송 수수료 (에너지/대역폭)
- 거래소 거래 수수료
- 출금 수수료

---

## 체크리스트

- [ ] TetherUSD 메인넷 배포
- [ ] SunSwap 유동성 풀 (우리 USDT + TRX)
- [ ] 상대: token-receive.html로 받기
- [ ] 상대: SunSwap에서 우리 USDT → TRX 스왑
- [ ] 상대: TRX → 거래소 → XRP/ETH (선택)

---

**전체 흐름·첫 행동·부연 설명:** `전체_절차_가이드.md` 참고
