# Green Point (GRP) — 자체 보안 검토 보고서

**목적:** TronScan 감사 보고서 제출용 (토큰 평판 업데이트 시 Audit Reports 필드)  
**계약:** GreenPoint (GreenPoint_TRON.sol)  
**날짜:** 2026

---

## 1. 접근 제어

| 항목 | 상태 | 비고 |
|------|------|------|
| owner만 lock/unlock | ✓ | onlyOwner modifier |
| owner만 transferOwnership | ✓ | onlyOwner modifier |
| burn은 누구나 (본인 잔액만) | ✓ | 의도된 설계 |
| transfer/approve/transferFrom | ✓ | 공개 함수, TRC20 표준 |

---

## 2. 잠금 로직

| 항목 | 상태 | 비고 |
|------|------|------|
| 잠금 시 transfer 차단 | ✓ | notLocked modifier |
| 잠금 시 transferFrom 차단 | ✓ | notLocked modifier |
| 잠금 시 burn 차단 | ✓ | notLocked modifier |
| 수신자 잠금 시 전송 차단 | ✓ | require(!isLocked[to]) |

---

## 3. 오버플로우·언더플로우

| 항목 | 상태 | 비고 |
|------|------|------|
| Solidity 0.8+ | ✓ | 자동 체크 |
| balanceOf 감소 전 검증 | ✓ | require(balanceOf >= amount) |
| allowance 검증 | ✓ | require(allowance >= amount) |

---

## 4. 주소 검증

| 항목 | 상태 | 비고 |
|------|------|------|
| transferOwnership(0) 차단 | ✓ | require(newOwner != address(0)) |

---

## 5. 이벤트

| 항목 | 상태 | 비고 |
|------|------|------|
| Transfer | ✓ | 전송·소각 시 발생 |
| Approval | ✓ | approve 시 발생 |
| Burn, Lock, Unlock | ✓ | 해당 동작 시 발생 |
| OwnershipTransferred | ✓ | 소유권 이전 시 발생 |

---

## 6. TRC20 호환

| 항목 | 상태 | 비고 |
|------|------|------|
| transfer, approve, transferFrom | ✓ | 표준 구현 |
| balanceOf, allowance | ✓ | 표준 구현 |
| decimals = 6 | ✓ | USDT 호환 |

---

## 7. 알려진 제한 사항

| 항목 | 설명 |
|------|------|
| approve front-running | ERC20/TRC20 공통. approve 전 0으로 리셋 권장. |
| 중앙화 | owner가 lock/unlock 가능. 의도된 설계. |

---

## 8. 결론

- 기본 TRC20 기능 및 lock/burn 확장 기능이 설계대로 동작함.
- Solidity 0.8+ 사용으로 산술 오버플로우 위험 완화.
- 접근 제어(onlyOwner) 적용됨.

**본 문서는 자체 검토 결과이며, 전문 보안 감사(CertiK, Hacken 등)를 대체하지 않습니다.**
