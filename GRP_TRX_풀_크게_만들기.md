# GRP/TRX 풀 크게 만들기

**기존 풀(5 TRX + 500 GRP)에 유동성 추가 → 풀 확대**

---

## 1. 접속

```
https://sunswap.com/?tokenAddress=TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6&type=add
```

또는

1. https://sunswap.com 접속
2. **Pool** → **Add Liquidity**
3. **Token 1:** TRX 선택
4. **Token 2:** `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` 입력 (Manage → Import)

→ 기존 GRP/TRX 풀 선택

---

## 2. 비율 (기존 풀 유지)

| 현재 풀 | 비율 |
|---------|------|
| 5 TRX + 500 GRP | 1 TRX = 100 GRP |

**추가할 때도 같은 비율 유지.**

| 추가 예시 | TRX | GRP |
|-----------|-----|-----|
| 소규모 | 50 | 5,000 |
| 중규모 | 200 | 20,000 |
| 대규모 | 500 | 50,000 |
| 1 TRX = 10,000 GRP로 변경하려면 | 100 | 1,000,000 |

---

## 3. 권장 규모

| 목표 | TRX | GRP | 비율 |
|------|-----|-----|------|
| **풀 2배** | 10 | 1,000 | 1:100 유지 |
| **풀 10배** | 50 | 5,000 | 1:100 유지 |
| **풀 100배** | 500 | 50,000 | 1:100 유지 |
| **가격 변경** (1 TRX = 10,000 GRP) | 100 | 1,000,000 | 새 비율 |

---

## 4. 실행 순서

1. **준비물**
   - TRX (풀용 + 가스비 50~200 TRX)
   - GRP (`TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6`)
   - Energy (풀 추가는 풀 생성보다 적게 소모)

2. **SunSwap** → Add Liquidity → TRX + GRP 선택

3. **금액 입력** (비율 맞춰서)
   - TRX 100 입력 → GRP 자동 계산 (또는 수동 입력)

4. **Supply** → TronLink 2회 승인 (TRX, GRP 각각)

---

## 5. 주의

- **비율 유지:** 기존 풀 가격 깨지지 않게 같은 비율로 추가
- **가스비:** 풀 추가도 Energy 사용 (생성보다 적음)
- **LP 토큰:** Supply 시 LP 토큰 받음 → 나중에 Remove로 회수 가능

---

## 6. 링크

| 용도 | URL |
|------|-----|
| 풀 추가 | https://sunswap.com/?tokenAddress=TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6&type=add |
| Energy 대여 | https://tronpoolenergy.com |
