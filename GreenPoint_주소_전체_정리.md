# Green Point (GRP) — 주소 전체 정리

**업데이트:** 2026-02

---

## 1. 주소 구분

| 구분 | 주소 | 설명 |
|------|------|------|
| **발행자 (TronLink 지갑)** | `TVMfvZxNrTWE9jFoN4RBdyercKhLpRYrFm` | 본인 지갑. TRX·GRP 보유. TronLink에 연결된 주소 |
| **TronScan GRP (상장)** | `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` | TronScan 배포 토큰. SunSwap 유동성 풀 있음 |
| **Sun Pump GRP (상장)** | `TD8sRqLZ1m2uZfS7tKuVgXUkSSTSCFTb5n` | Sun Pump 론치 토큰. 본딩 커브. 별도 컨트랙트 |

---

## 2. 상장 주소 vs TronLink 주소 (다름)

| 항목 | 주소 |
|------|------|
| **TronLink 주소** (지갑) | `TVMfvZxNrTWE9jFoN4RBdyercKhLpRYrFm` |
| **TronScan GRP 상장 주소** (토큰 컨트랙트) | `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` |
| **Sun Pump GRP 상장 주소** (토큰 컨트랙트) | `TD8sRqLZ1m2uZfS7tKuVgXUkSSTSCFTb5n` |

- **지갑 주소** = 자산을 보관하는 주소 (T로 시작)
- **토큰 컨트랙트 주소** = 토큰 자체의 주소 (T로 시작, 토큰마다 다름)
- TronScan GRP와 Sun Pump GRP는 **서로 다른 토큰** (컨트랙트 주소 다름)

---

## 3. DEX란?

**DEX = Decentralized Exchange (탈중앙화 거래소)**

- 중앙 서버 없이 스마트 컨트랙트로 스왑
- 예: SunSwap, Uniswap, PancakeSwap

---

## 4. 우리 DEX 등록 현황

| DEX | 토큰 | 상태 |
|-----|------|------|
| **SunSwap** | TronScan GRP (`TPG79...`) | ✅ 등록됨. TRX/GRP 풀 생성 완료 (5 TRX + 500 GRP) |
| **Sun Pump** | Sun Pump GRP (`TD8s...`) | ✅ 등록됨. 본딩 커브 거래 |

---

## 5. LUSD / USDT (symbol 기준 정리)

| 구분 | 주소 | symbol() |
|------|------|----------|
| **LUSD** | `TBiL9TmE22NVEn60ixXsGMf3KjaKBWnLAJ` | LUSD |
| **USDT (우리)** | `TFZBtQ8ibh3cxzfhR6U1T3qtHC7iBja2MB` | USDT |
| **USDT (우리)** | `TNXDJXHKBXZFWLksXpvccy9oKZNw9kHPVS` | USDT |
| **공식 USDT** | `TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t` | USDT |

---

## 6. 감사 보고서 제출 시 계약 주소

- **TronScan GRP** 감사 제출: `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6`
- **Sun Pump GRP** 감사 제출: `TD8sRqLZ1m2uZfS7tKuVgXUkSSTSCFTb5n` (별도 제출 시)
