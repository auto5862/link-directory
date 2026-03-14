# Sun Pump 완전 가이드 — TRON 밈코인 론치

**SunPump로 할 수 있는 것 / 못 하는 것 / 방법별 비교**

---

# 1. Sun Pump란?

| 항목 | 내용 |
|------|------|
| **URL** | https://sunpump.meme/ |
| **역할** | TRON 밈코인 론치패드 (Pump.fun 스타일) |
| **비용** | 약 20 TRX (생성 수수료) |
| **코딩** | 불필요 — 웹에서 입력만 하면 됨 |

**특징:**
- 본딩 커브(Bonding Curve)로 가격 결정
- 시총 $69,420 도달 시 **자동으로 SunSwap V2 유동성 풀 생성**
- 약 100,000 TRX + 2억 토큰 풀에 투입, 나머지 TRX 소각
- 거래 수수료 1%
- 페어 런치(사전 판매·팀 할당 없음)

---

# 2. Sun Pump로 할 수 있는 것

| 작업 | 가능 여부 |
|------|-----------|
| 토큰 생성 (이름·심볼·이미지) | ✅ |
| 즉시 거래 (본딩 커브) | ✅ |
| SunSwap V2 자동 마이그레이션 | ✅ (시총 $69,420 도달 시) |
| 커스텀 컨트랙트(Burn, Lock 등) | ❌ |
| TronScan 소스 검증 | ❌ (플랫폼이 생성) |
| 발행량·decimals 직접 설정 | ❌ (플랫폼 기본값) |

---

# 3. Sun Pump vs TronScan 직접 배포

| 구분 | Sun Pump | TronScan 직접 배포 |
|------|----------|-------------------|
| 비용 | ~20 TRX | 배포·검증·Record 비용 |
| 난이도 | 낮음 | 중간 |
| Burn/Lock 등 기능 | 없음 | 있음 |
| SunSwap 연동 | 자동 (시총 도달 시) | 수동 풀 생성 (문제 발생 가능) |
| TronScan 의심 표시 | 플랫폼 토큰이라 상대적 덜함 | 프로젝트별 검토 |
| 컨트랙트 소유권 | 플랫폼 | 본인 |

---

# 4. Sun Pump 사용 방법 (단계별)

## 4-1. 준비

| # | 확인 |
|---|------|
| 1 | TronLink 등 TRON 호환 지갑 |
| 2 | 최소 20 TRX 이상 (생성 수수료) |
| 3 | Mainnet 연결 |

## 4-2. 토큰 생성

1. **https://sunpump.meme/** 접속
2. 지갑 연결 (Connect Wallet)
3. 상단 **Launch** 또는 **Create Token** 클릭
4. 입력:
   - **Token Name** — 토큰 이름
   - **Ticker Symbol** — 심볼 (예: GRP, AP)
   - **Description** — 설명
   - **Website** (선택)
   - **Social links** (선택)
   - **Image** (선택)
5. **Launch** 클릭 → 수수료 결제
6. 생성 완료 후 **즉시 거래 가능**

## 4-3. 본딩 커브 → SunSwap

- 시총이 **$69,420**에 도달하면:
  - 유동성이 SunSwap V2에 자동 투입
  - 이후 SunSwap에서 일반 스왑 가능
- 도달 전에는 SunPump 내에서만 거래

---

# 5. Sun Pump 활용 전략

| 목적 | 추천 |
|------|------|
| 빠르게 밈코인 테스트 | Sun Pump |
| Burn/Lock 등 기능 필요 | TronScan 직접 배포 |
| SunSwap 연동이 최우선 | Sun Pump (자동 마이그레이션) |
| TronScan 의심 이력 회피 | **새 이름·심볼**로 Sun Pump 또는 새 토큰 배포 |

---

# 6. 주의사항

- **럭 풀(Rug Pull)** 위험 — 팀이 유동성 회수 후 사라질 수 있음
- **변동성** — 밈코인 특성상 급등·급락 가능
- **이름·심볼** — USD, USDT, Tether, Link 등 기존 프로젝트와 혼동될 이름은 피할 것

---

# 7. 참고 URL

- SunPump: https://sunpump.meme/
- SunSwap: https://sunswap.com/
- TronScan: https://tronscan.org/
