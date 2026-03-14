# 배포 문서 TetherUSD 오류 — 정리

**확인 결과:** 배포 전 문서 + **TetherUSD.sol** 계약 이름이 사기 표시 원인.

---

## 1. .sol 파일 확인 (계약서)

| 파일 | contract 이름 | name | symbol | 결과 |
|------|---------------|------|--------|------|
| **TetherUSD.sol** | `contract TetherUSD` | "Tether USD" | "USDT" | **사기 표시** |
| **LinkUSD_TRON.sol** | `contract LinkUSD` | "Link USD" | "LUSD" | 정상 |

→ TronIDE 배포 시 **1_Storage.sol에 넣은 코드의 contract 이름**이 CONTRACT 선택에 그대로 나옴.  
→ **TetherUSD.sol** 넣으면 CONTRACT: **TetherUSD**만 선택 가능 → 배포 시 Contract Name = TetherUSD → 사기.

---

## 2. 문제가 된 문서 (수정 완료)

| 문서 | 오류 | 수정 |
|------|------|------|
| **작업_체크리스트.md** | CONTRACT: **TetherUSD** / Deploy → TetherUSD | → **LinkUSD** |
| **전체_절차_가이드.md** | 제목 TetherUSD, 체크리스트 TetherUSD | → **Link USD** |

→ 위 문서 따라 **LinkUSD_TRON.sol** 대신 **TetherUSD.sol** 넣거나, CONTRACT: TetherUSD 선택 → 사기 표시됨.

---

## 3. 현재 메인넷 (이미 배포됨)

- **Contract Name:** TetherUSD
- **원인:** TetherUSD.sol 사용 또는 CONTRACT: TetherUSD 선택
- **검증:** Main Contract **TetherUSD**, **TetherUSD.sol** 업로드

---

## 4. 재배포 시 (앞으로)

| 문서 | CONTRACT |
|------|----------|
| 배포_전_할_일_순서.md | **LinkUSD** ✓ |
| TronIDE_배포_한번에.md | **LinkUSD** ✓ |
| 메인넷_배포_가이드.md | **LinkUSD** ✓ |
| 금지_풀_가이드.md | **LinkUSD** ✓ |
| 작업_체크리스트.md | **LinkUSD** ✓ (수정됨) |
| 전체_절차_가이드.md | **LinkUSD** ✓ (수정됨) |

→ **전부 LinkUSD로 통일.**
