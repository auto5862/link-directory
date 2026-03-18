# LUSD·USDT DEX 상장 — 올바른 순서

**GRP처럼 Record Token 먼저 → SunSwap 풀 나중.**

---

## 순서 (반드시 지킴)

| 순서 | 단계 | 설명 |
|------|------|------|
| **1** | Record Token (TronScan) | 토큰 등록. 이걸 해야 SunSwap에서 검색됨 |
| **2** | SunSwap 풀 생성 | Add Liquidity |

---

# 1단계: Record Token (LUSD)

## 1-1. 접속

**URL:** https://tronscan.org/#/tokens/record/trc20

또는: tronscan.org → **Tokens** → **Record Token** → **TRC-20**

---

## 1-2. LUSD 기입란

| 기입란 | 입력값 |
|--------|--------|
| **Contract Address** | `TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ` |
| Contract Name | `LinkUSD` |
| Token Name | `Link USD` |
| Token Abbreviation | `LUSD` |
| Total Supply | (컨트랙트에서 확인. 또는 `1000000000000000`) |
| Token Introduction | `Link USD (LUSD) — TRON TRC20 스테이블코인. 온체인 Burn·Lock·투명성.` |

→ **Submit** → TronLink 서명

---

# 2단계: Record Token (USDT)

같은 Record Token 페이지에서 **USDT**도 등록.

| 기입란 | 입력값 |
|--------|--------|
| **Contract Address** | `TFZBtQ8ibh3cxzfhR6U1T3qtHC7iBja2MB` |
| Contract Name | `TetherUSD` (또는 컨트랙트 실제 이름) |
| Token Name | `Tether USD` |
| Token Abbreviation | `USDT` |
| Total Supply | (컨트랙트에서 확인) |
| Token Introduction | `TRON TRC20 스테이블코인.` |

→ **Submit** → TronLink 서명

---

# 3단계: Record 완료 후 (SunSwap 풀)

Record Token 제출 후 **몇 분~몇 시간** 기다리면 SunSwap에 인덱싱될 수 있음.

그 다음:

1. https://sunswap.com/?tokenAddress=TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ&type=add
2. Token 2에 LUSD 선택 (이제 "No tokens found" 안 뜸)
3. TRX + LUSD 수량 입력 → **Create Pool Pair** → **Supply**

---

**정리:** Record Token 먼저 → SunSwap 풀 나중. GRP랑 같은 순서.
