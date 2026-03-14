# SunSwap 유동성 풀 생성 가이드

## 1. 토큰 인식 문제 해결

SunSwap 기본 화면에서는 **유동성 풀이 없는 토큰**이 목록에 안 뜹니다.  
**직접 링크**로 들어가야 합니다.

### 바로가기 링크 (계약 1 - Link USD)

```
https://sunswap.com/?tokenAddress=TNXDJXHKBXZFWLksXpvccy9oKZNw9kHPVS&type=add
```

위 링크 클릭 → SunSwap 유동성 추가 페이지로 바로 이동 → 토큰이 인식됩니다.

---

## 2. 비용 (대략)

| 항목 | 예상 |
|------|------|
| **에너지/대역폭** | 지갑에 **최소 1,000 TRX** 여유 (가스비용) |
| **유동성 자금** | TRX + 토큰 둘 다 필요 (예: TRX 1,000개 + 토큰 N개) |
| **초기 가격** | TRX:토큰 비율로 결정 (예: 1:1이면 토큰 1개 = 1 TRX) |

- 풀 생성 실패해도 TRX는 소모될 수 있음
- TRX 시세 기준 대략 수만 원~수십만 원 수준 예상 (유동성 규모에 따라 다름)

---

## 3. 순서 (지금 당장)

1. **TronLink**에 발행자 지갑 `TVMfvZxNrTWE9jFoN4RBdyercKhLpRYrFm` 연결
2. 아래 링크 클릭:
   - **https://sunswap.com/?tokenAddress=TNXDJXHKBXZFWLksXpvccy9oKZNw9kHPVS&type=add**
3. **Pool** → **Add Liquidity** 선택
4. **토큰 2개 선택**: TRX + Link USD (TNXDJX...)
   - Link USD가 안 보이면 검색창에 `TNXDJXHKBXZFWLksXpvccy9oKZNw9kHPVS` 붙여넣기
5. **금액 입력** (TRX 개수, 토큰 개수)
6. **Create Pool Pair** 클릭 → 지갑에서 서명
7. 거래쌍 생성 후 **Supply** 클릭 → 유동성 추가 → 다시 서명
8. 확인되면 풀 생성 완료

---

## 4. 주의사항

- **Approve** 먼저 필요할 수 있음 (SunSwap가 토큰 사용 허용)
- 계약 1(`TNXDJX...`) 또는 계약 2(`TFZBtQ...`) 중 **하나만** 풀에 넣는 걸 권장 (둘 다 넣으면 혼란)
- TronScan "의심" 표시와 무관하게 풀 생성·스왑은 가능

---

## 5. 계약 2로 할 경우

```
https://sunswap.com/?tokenAddress=TFZBtQ8ibh3cxzfhR6U1T3qtHC7iBja2MB&type=add
```
