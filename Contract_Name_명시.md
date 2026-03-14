# Contract Name 명시 — 가장 중요

**통합 문서:** `배포_전_후_토큰등급_전부_업데이트.md` (배포 전·후·토큰 등급·링크 전부)

**TronScan 거래/컨트랙트 페이지 → Overview → Contract Name**

---

## 1. 현재 메인넷 (TNXDJXHKBXZFWLksXpvccy9oKZNw9kHPVS)

| 항목 | 값 |
|------|-----|
| **Contract Name** | **TetherUSD** |
| 토큰 이름 (name) | 테더USD (Tether USD) |
| 심볼 | USDT |

→ **이게 블랙리스트/피싱 경고 뜨는 핵심 이유.**  
→ TronScan이 "TetherUSD" 보면 USDT 사칭으로 자동 감지.

---

## 2. 테더 쓰면 안 되는 이유

**Contract Name이 TetherUSD**라서.

- 토큰 이름·심볼만 바꿔도 **Contract Name은 배포 후 변경 불가**
- TronScan은 **Contract Name**을 보고 자동 플래그
- 그래서 Tether/USDT/테더 계열 쓰면 안 됨

---

## 3. 블랙리스트/경고 뜨는 이유

**Contract Name = TetherUSD** 때문.

- TronScan: "TetherUSD" = USDT 사칭 의심 → 피싱/위험 계약으로 표시
- 수정·업데이트 불가 → 오탐 해제 요청으로만 대응 가능

---

## 4. 재배포 시 (나중에 새로 배포할 때)

| 해야 할 것 | 안 해도 되는 것 |
|------------|-----------------|
| **Contract Name을 LinkUSD로** (처음부터) | Contract Name 때문에 또 시간 들일 필요 없음 |
| `contract LinkUSD {` 사용 | |
| `name = "Link USD"`, `symbol = "LUSD"` | |

→ **처음부터 LinkUSD로 배포하면** Contract Name 때문에 경고 안 걸림.  
→ 그때는 블랙리스트/오탐 해제에 시간 안 씀.

---

## 5. 체크 (재배포 전)

- [ ] `contract LinkUSD` (TetherUSD 아님)
- [ ] `name = "Link USD"`
- [ ] `symbol = "LUSD"`
- [ ] TronIDE Deploy 시 CONTRACT: **LinkUSD** 선택
