# Green Point (GRP) — SunSwap 유동성 풀 직접 만들기

**TronScan GRP (TPG79...)를 SunSwap에 등록하는 방법.**

---

## 준비물

| 항목 | 필요 |
|------|------|
| **GRP** | TronScan 배포 GRP (발행자라 10억 개 보유) |
| **TRX** | 풀에 넣을 TRX (최소 수백~수천 TRX 권장) |
| **Energy/TRX** | 가스비용 (최소 1,000 TRX 여유 권장) |
| **TronLink** | 연결된 지갑 |

---

## 1. SunSwap 접속

**URL:** https://sunswap.com

1. 브라우저에서 접속
2. **Connect Wallet** → TronLink 연결

---

## 2. Add Liquidity로 이동

1. 상단 메뉴 **Pool** 클릭
2. **Add Liquidity** 클릭

**직접 URL:** https://sunswap.com/#/add

---

## 3. 토큰 선택

| 토큰 | 입력 |
|------|------|
| **첫 번째** | **TRX** 선택 |
| **두 번째** | **컨트랙트 주소 입력** → `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` |

- 두 번째 토큰에서 "Select a token" → **컨트랙트 주소로 검색** 또는 **Import** 클릭 후 주소 붙여넣기
- Green Point (GRP)가 나타나면 선택

---

## 4. 금액 입력

| 토큰 | 예시 |
|------|------|
| **TRX** | 100 TRX, 500 TRX, 1000 TRX 등 (본인 선택) |
| **GRP** | TRX에 맞춰 자동 계산되거나, 직접 입력 |

- **초기 가격** = TRX량 : GRP량 비율로 결정됨
- 예: 100 TRX + 1,000,000 GRP → 1 TRX = 10,000 GRP 수준

---

## 5. Create Pool Pair / Supply

1. **Create Pool Pair** 버튼 클릭 (새 풀 생성 시)
2. TronLink에서 **확인** 클릭
3. 트랜잭션 **확인(confirmed)** 될 때까지 대기
4. **토큰 승인(Authorize)** 필요 시 → TronLink 서명
5. **Supply** 클릭 → TronLink에서 최종 확인

---

## 6. 완료 후

- SunSwap에서 **GRP/TRX** 거래 가능
- 본인이 넣은 유동성에 따라 **거래 수수료** 일부 수익

---

## 주의사항

- **TronScan GRP**와 **Sun Pump GRP**는 **다른 토큰** (컨트랙트 주소 다름)
- TronScan GRP: `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6`
- Sun Pump GRP: `TD8sRqLZ1m2uZfS7tKuVgXUkSSTSCFTb5n`
- 이 가이드는 **TronScan GRP**용

---

## URL 요약

| 단계 | URL |
|------|-----|
| SunSwap | https://sunswap.com |
| Add Liquidity | https://sunswap.com/#/add |
| GRP 컨트랙트 | TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6 |
