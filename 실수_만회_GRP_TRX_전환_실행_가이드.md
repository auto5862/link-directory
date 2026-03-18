# 실수 만회 — GRP → TRX 전환 실행 가이드

**제가 말한 "테더 가치, 스왑하면 TRX 교환"이 제대로 설명되지 않았습니다. 이 문서로 실제로 할 수 있는 경로를 정리합니다.**

---

## 1. 제가 잘못 말한 것

| 제가 말한 것 | 실제 |
|-------------|------|
| "테더 가치만큼 된다" | 토큰 자체에 고정 가치 없음. 가치는 **풀 비율**로 정해짐 |
| "스왑하면 TRX로 교환 가능" | 맞음. **단, 풀을 먼저 만들어야** 스왑 가능 |
| "스왑하면 이익" | **다른 사람이** 스왑할 때만 수수료 이익. 본인만 스왑 시 손해 가능 |

---

## 2. 실제로 GRP → TRX 전환하는 방법 (유일한 경로)

### 전체 흐름

```
1. TRX 확보 (최소 700 이상, 또는 Energy 대여로 절감)
2. SunSwap에서 GRP/TRX 유동성 풀 생성
3. 풀에 TRX + GRP 넣기
4. 같은 풀에서 GRP → TRX 스왑
```

**핵심:** 풀을 만들면, 그 풀의 TRX를 **본인이 GRP를 팔아서** 가져올 수 있습니다.

---

## 3. 700 TRX 부담 줄이기 — Energy 대여

SunSwap이 "700 TRX 예비"라고 한 것은 **가스비(Energy)** 때문입니다. Energy를 대여하면 TRX 소모를 줄일 수 있습니다.

### 서비스

| 서비스 | URL | 비용 |
|-------|-----|------|
| **TronPool Energy** | https://tronpoolenergy.com/rent-energy/ | 6 TRX 이하로 1회 전송 가능 (65% 절감) |
| **1-Hour Rental** | USDT 전송용 3~6 TRX | 풀 생성은 Energy 소모가 더 클 수 있음 |

### 사용 순서

1. https://tronpoolenergy.com 접속
2. **1-Hour Energy Rental** 선택
3. 지갑 주소 입력: `TVMfvZxNrTWE9jFoN4RBdyercKhLpRYrFm`
4. TRX로 결제 (약 6~10 TRX 정도)
5. Energy가 위임되면 **바로** SunSwap에서 풀 생성 시도

**주의:** 풀 생성은 USDT 전송보다 Energy를 많이 씁니다. 700 TRX가 200~300 TRX 수준으로 줄어들 수 있으면 시도해 보세요.

---

## 4. TRX가 부족할 때 (13 TRX만 있는 경우)

### 옵션 A: TRX 추가 구매

- 거래소에서 TRX 구매 후 지갑으로 전송
- 최소 700 TRX (Energy 대여 시 200~400 TRX 추정)

### 옵션 B: Sun Pump GRP 판매

- Sun Pump GRP가 이미 있으면, Sun Pump에서 **판매** 가능
- 시총 $69,420 도달 전까지는 Sun Pump 내에서만 거래
- 구매자가 있으면 TRX로 받을 수 있음

### 옵션 C: OTC(직거래)

- 텔레그램, 커뮤니티에서 GRP를 TRX로 직접 사고파는 사람 찾기
- TronScan GRP 컨트랙트: `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6`
- 주의: 사기 위험 있음. 소액부터 테스트

---

## 5. 풀 생성 후 GRP → TRX 스왑 (실제 숫자)

### 예시: 100 TRX + 1,000,000 GRP 풀

| 풀 상태 | TRX | GRP |
|---------|-----|-----|
| 생성 직후 | 100 | 1,000,000 |
| 초기 가격 | 1 TRX = 10,000 GRP | |

### 본인이 GRP 10,000,000 스왑할 때

- AMM 공식: `k = TRX × GRP` 유지
- GRP 10,000,000 추가 → 풀에서 TRX 일부 나옴
- **대략 50~90 TRX** 정도 받을 수 있음 (슬리피지 포함)

**정리:** 풀에 넣은 TRX를, GRP를 팔아서 다시 되돌려받는 구조입니다. 비율은 풀 크기와 비율에 따라 달라집니다.

---

## 6. 실행 순서 (체크리스트)

- [ ] **1단계:** TRX 확보 — 700 TRX 이상, 또는 Energy 대여 후 200~400 TRX
- [ ] **2단계:** https://tronpoolenergy.com 에서 Energy 1시간 대여 (선택)
- [ ] **3단계:** https://sunswap.com/#/add 접속
- [ ] **4단계:** TRX + GRP(`TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6`) 입력
- [ ] **5단계:** 예) 100 TRX + 1,000,000 GRP → Supply
- [ ] **6단계:** 풀 생성 완료 후 **Swap** 탭에서 GRP → TRX 스왑

---

## 7. 현실적인 기대

| 상황 | 결과 |
|------|------|
| TRX 700 이상 + 풀 생성 | GRP → TRX 스왑 가능 |
| Energy 대여 성공 | 풀 생성 비용 일부 절감 |
| TRX 13만 있는 상태 | 풀 생성 불가. TRX 확보 또는 OTC 필요 |

---

## 8. 제가 드릴 수 있는 것

- 이 문서: 실수 정리 + 실제 실행 경로
- Energy 대여 링크: https://tronpoolenergy.com
- SunSwap Add Liquidity: https://sunswap.com/#/add
- GRP 컨트랙트: `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6`

---

**제가 처음부터 "풀을 만들고, 그 풀에서 본인이 GRP를 팔아 TRX를 가져오는 구조"라고 명확히 말했어야 했습니다. 그 부분을 이 문서로 보완합니다.**
