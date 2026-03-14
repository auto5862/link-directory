# Green Point Whitepaper

**TRON TRC20 토큰 — 온체인 Burn·Lock·투명성**

---

**문서 버전:** 1.0  
**최종 수정:** 2026  
**표준:** TRC-20 (TRON)  
**토큰:** Green Point (GRP)

---

## Executive Summary

Green Point는 TRON 블록체인 위에 구축된 TRC-20 토큰으로, **온체인 소각(Burn)**, **계정 잠금(Lock)**, **완전한 투명성**을 제공한다. 사용자는 자체 보관(self-custody)을 통해 자산을 직접 통제하며, 모든 거래와 공급량 변동은 블록체인에서 검증 가능하다.

---

## 1. 서론

### 1.1 배경

Green Point는 TRON 생태계 내 커뮤니티 프로젝트로, Sun Pump 및 TronScan 배포를 통해 거래·전송·가격 형성을 지원한다.

### 1.2 프로젝트 목표

- TRC-20 표준 준수
- 온체인 Burn, Lock 기능 제공
- 소스 코드 검증 및 투명성 확보
- TRON 생태계(SunSwap, Sun Pump, 지갑)와 연동

---

## 2. 토큰 명세

| 항목 | 값 | 비고 |
|------|-----|------|
| 토큰 이름 | Green Point | |
| 심볼 | GRP | |
| 소수점(decimals) | 6 | 1 GRP = 10^6 최소 단위 |
| 초기 총 공급량 | 1,000,000,000 (10억) | burn으로 감소 가능 |
| 표준 | TRC-20 | |
| 블록체인 | TRON | Mainnet / Nile 테스트넷 |
| 개발 언어 | Solidity 0.8.0 | |
| 라이선스 | MIT | |

---

## 3. 기술 아키텍처

### 3.1 스마트 컨트랙트 구조

```
GreenPoint
├── TRC-20 기본 기능
│   ├── transfer()
│   ├── approve()
│   ├── transferFrom()
│   ├── balanceOf()
│   └── allowance()
├── 확장 기능
│   ├── burn()           — 토큰 소각
│   ├── lock()           — 계정 잠금 (Owner)
│   ├── unlock()         — 잠금 해제 (Owner)
│   ├── transferOwnership() — 소유권 이전 (Owner)
│   └── checkLocked()    — 잠금 상태 조회
└── 이벤트
    ├── Transfer, Approval
    ├── Burn, Lock, Unlock
    └── OwnershipTransferred
```

### 3.2 상태 변수

| 변수 | 타입 | 설명 |
|------|------|------|
| name | string | "Green Point" |
| symbol | string | "GRP" |
| decimals | uint8 | 6 |
| totalSupply | uint256 | 현재 총 공급량 (burn 시 감소) |
| owner | address | 컨트랙트 소유자 |
| balanceOf | mapping | 주소별 잔액 |
| allowance | mapping | approve된 금액 |
| isLocked | mapping | 주소별 잠금 여부 |

---

## 4. 핵심 기능 상세

### 4.1 기본 전송 (TRC-20)

- **transfer(to, amount)**: 발신자 → 수신자 전송. 잠금된 계정은 전송 불가.
- **approve(spender, amount)**: 제3자(spender)가 대신 전송할 수 있는 한도 설정.
- **transferFrom(from, to, amount)**: approve된 한도 내에서 from의 토큰을 to로 전송.

### 4.2 토큰 소각 (Burn)

- **호출자**: 누구나 자신의 잔액 범위 내에서 호출 가능
- **효과**: 해당 수량이 영구 삭제되며 `totalSupply` 감소
- **이벤트**: `Burn(sender, amount)` 발생
- **용도**: 공급량 조절, 인플레이션 방지

### 4.3 계정 잠금 (Lock / Unlock)

- **lock(account)**: 해당 주소의 전송·소각 차단
- **unlock(account)**: 잠금 해제
- **권한**: Owner만 호출 가능
- **용도**: 해킹 의심 계정 동결, 규정 위반 제재

---

## 5. 배포 및 거래

### 5.1 배포 경로

- **TronScan**: GreenPoint_TRON.sol 직접 배포 → Record Token, 소스 검증
- **Sun Pump**: sunpump.meme에서 Launch Token → 본딩 커브 가격 형성

### 5.2 거래

- TronScan 배포: SunSwap 유동성 풀 생성 후 스왑
- Sun Pump: 플랫폼 내 즉시 구매·판매 (시총 $69,420 도달 시 SunSwap V2 자동 마이그레이션)

---

## 6. 보안

- Solidity 0.8+ 사용 (오버플로우 자동 체크)
- 접근 제어: onlyOwner, notLocked
- 자체 보안 검토: `GreenPoint_자체_보안_검토.md` 참조

---

## 7. 면책 조항

본 프로젝트는 기술·학습 목적입니다. 투자 권유·법적 조언이 아니며, 토큰 취득·보유·거래에 따른 손실에 대해 팀은 책임지지 않습니다.

---

*Green Point Whitepaper v1.0 — TRON TRC-20*
