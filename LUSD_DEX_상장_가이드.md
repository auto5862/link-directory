# LUSD + USDT DEX 상장 가이드

**목표:** LUSD와 USDT를 각각 따로 SunSwap 풀에 상장.

---

## 1. 토큰 정리 (symbol 기준)

| 구분 | 주소 | symbol() |
|------|------|----------|
| **LUSD** | `TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ` | LUSD |
| **USDT (우리)** | `TFZBtQ8ibh3cxzfhR6U1T3qtHC7iBja2MB` | USDT |
| **공식 USDT** | `TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t` | USDT |

---

## 2. 풀 생성 순서

### 풀 1: LUSD / TRX

1. https://sunswap.com/#/add 접속
2. Token 1: **TRX**
3. Token 2: `TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ` (Manage → Import)
4. 비율: 1 LUSD ≈ 1÷TRX가격 TRX (예: TRX $0.30 → 1 LUSD ≈ 3.33 TRX)
5. Supply

### 풀 2: USDT (우리) / TRX

1. https://sunswap.com/#/add 접속
2. Token 1: **TRX**
3. Token 2: `TFZBtQ8ibh3cxzfhR6U1T3qtHC7iBja2MB` (Manage → Import)
4. 비율: 1 USDT ≈ 1÷TRX가격 TRX
5. Supply

### 풀 3 (선택): LUSD / 공식 USDT

1. Token 1: **USDT** (`TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t`)
2. Token 2: **LUSD** (`TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ`)
3. 비율: 1 LUSD = 1 USDT
4. Supply

---

## 3. 직접 링크

```
LUSD 풀: https://sunswap.com/?tokenAddress=TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ&type=add
USDT 풀: https://sunswap.com/?tokenAddress=TFZBtQ8ibh3cxzfhR6U1T3qtHC7iBja2MB&type=add
```

---

## 4. 준비물

- LUSD (`TBiL9...`)
- USDT (`TFZBt...`)
- TRX (풀용 + 가스비)
- Energy (또는 TRX 700+ 예비)
