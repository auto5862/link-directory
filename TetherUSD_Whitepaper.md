# Link USD Whitepaper

**TRON 기반 차세대 스테이블코인 — 온체인 기능으로 기존 USDT의 한계를 넘다**

---

**문서 버전:** 1.0  
**최종 수정:** 2026  
**표준:** TRC-20 (TRON)  
**토큰:** Link USD (LUSD)

---

## Executive Summary

Link USD는 TRON 블록체인 위에 구축된 TRC-20 스테이블코인으로, 기존 Tether(USDT)가 제공하지 않는 **온체인 소각(Burn)**, **계정 잠금(Lock)**, **완전한 투명성**을 제공한다. 사용자는 자체 보관(self-custody)을 통해 자산을 직접 통제하며, 모든 거래와 공급량 변동은 블록체인에서 검증 가능하다.

---

## 1. 서론

### 1.1 배경

스테이블코인은 암호화폐 시장에서 결제, 송금, DeFi의 기축 자산으로 사용된다. Tether(USDT)는 시가총액 1위 스테이블코인이지만, 다음과 같은 구조적 한계가 있다:

| 기존 Tether (USDT) 한계 | Link USD (본 프로젝트) 해결 방식 |
|------------------------|---------------------|
| 민트/번 소각이 중앙화되어 불투명 | **사용자 직접 온체인 소각** — 누구나 자기 토큰을 영구 소각 가능 |
| 계정 동결이 기업 재량에 의존 | **온체인 계정 잠금** — Owner만 호출, 모든 동작이 블록체인에 기록됨 |
| 준비금·감사 논란 | **코드·공급량 완전 공개** — TronScan에서 실시간 검증 |
| 다중 체인으로 분산 | **TRON 단일 체인** — 저수수료, 3초 확정, 일관된 경험 |

### 1.2 프로젝트 목표

- TRC-20 표준을 준수하는 스테이블코인 구현
- 온체인 Burn, Lock 등 기존 USDT에 없는 기능 제공
- 소스 코드 검증 및 완전한 투명성 확보
- TRON 생태계(DEX, 지갑)와의 원활한 연동

---

## 2. 토큰 명세

| 항목 | 값 | 비고 |
|------|-----|------|
| 토큰 이름 | Link USD | |
| 심볼 | LUSD | |
| 소수점(decimals) | 6 | 1 LUSD = 10^6 최소 단위 |
| 초기 총 공급량 | 1,000,000,000 (10억) | burn으로 감소 가능 |
| 표준 | TRC-20 | |
| 블록체인 | TRON | Mainnet / Nile 테스트넷 |
| 개발 언어 | Solidity 0.8.0 | |
| 라이선스 | MIT | |

---

## 3. 기술 아키텍처

### 3.1 스마트 컨트랙트 구조

```
LinkUSD
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
│   └── checkLocked()   — 잠금 상태 조회
└── 이벤트
    ├── Transfer, Approval
    ├── Burn, Lock, Unlock
    └── OwnershipTransferred
```

### 3.2 상태 변수

| 변수 | 타입 | 설명 |
|------|------|------|
| name | string | "Link USD" |
| symbol | string | "LUSD" |
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

**기존 Tether와의 차이:** Tether의 소각은 기업이 오프체인에서 수행한다. Link USD는 **사용자가 직접 온체인에서 소각**한다.

- **호출자**: 누구나 자신의 잔액 범위 내에서 호출 가능
- **효과**: 해당 수량이 영구 삭제되며 `totalSupply` 감소
- **이벤트**: `Burn(sender, amount)` 발생
- **용도**: 공급량 조절, 인플레이션 방지, 가치 유지

### 4.3 계정 잠금 (Lock / Unlock)

**기존 Tether와의 차이:** Tether의 동결은 기업 재량으로 이루어진다. Link USD는 **Owner만** `lock`/`unlock`을 호출하며, 모든 동작이 블록체인에 기록된다.

- **lock(account)**: 해당 주소의 전송·소각 차단. `transfer`, `transferFrom`, `burn` 호출 시 revert
- **unlock(account)**: 잠금 해제
- **권한**: Owner만 호출 가능
- **용도**: 해킹 의심 계정 동결, 규정 위반 제재, 분쟁 시 자산 보호

### 4.4 소유권 이전 (transferOwnership)

- Owner가 새 소유자 주소를 지정하여 권한 이전
- 이전 후 lock/unlock/transferOwnership은 새 Owner만 호출 가능

### 4.5 잠금 상태 조회 (checkLocked)

- `checkLocked(account)` → `bool`: 해당 주소가 잠금 상태인지 반환
- 뷰 함수(view), 가스 비용 없음

---

## 5. 보안 모델

### 5.1 접근 제어

| 기능 | 호출 권한 |
|------|-----------|
| transfer, approve, transferFrom, burn | 모든 주소 (본인 잔액·승인 범위 내) |
| lock, unlock, transferOwnership | Owner만 |

### 5.2 검증 가능성

- **소스 코드**: TronScan에서 컨트랙트 검증(Verify Contract) 완료
- **공급량·잔액**: 블록체인에서 실시간 조회
- **잠금·소각 이력**: 이벤트 로그로 추적 가능

### 5.3 잠금 시 동작

- `isLocked[account] == true`인 경우:
  - `transfer`, `transferFrom`, `burn` 호출 시 `"Account is locked"` revert
  - 수신자(`to`)가 잠금 상태면 `"Recipient is locked"` revert

---

## 6. 생태계 연동

### 6.1 지갑

- TronLink, Trust Wallet 등 TRC-20 지원 지갑
- Custom Token으로 컨트랙트 주소 추가 후 사용

### 6.2 DEX (SunSwap)

- **유동성 풀**: TRX + Link USD 페어 생성
- **스왑**: 풀 생성 후 SunSwap에서 Link USD ↔ TRX 교환 가능
- **가격**: AMM 알고리즘에 의해 자동 형성

### 6.3 탐색기

- **TronScan**: tronscan.org (메인넷) / nile.tronscan.org (테스트넷)
- 주소·컨트랙트·트랜잭션·이벤트 조회

---

## 7. 배포 및 검증

### 7.1 배포 환경

| 항목 | 내용 |
|------|------|
| 도구 | TronIDE (tronide.io) |
| 지갑 | TronLink (Injected TronWeb) |
| 네트워크 | TRON Mainnet / Nile Testnet |
| 예상 비용 | Mainnet 배포 약 350 TRX |

### 7.2 배포 후 필수 작업

1. **TronScan Record Token**: 로고(imgUrl) 등록
2. **소스 코드 검증**: Verify Contract로 공개
3. **TronLink Custom Token**: 사용자 지갑에 토큰 추가

---

## 8. 사용 시나리오

### 8.1 P2P 송금

- A → B 직접 전송
- token-receive.html로 수신 확인 (Custom Token 추가 불필요)

### 8.2 TRX 교환 (SunSwap)

1. SunSwap에 Link USD-TRX 유동성 풀 생성
2. 사용자: Link USD → TRX 스왑
3. TRX → 거래소 입금 → XRP/ETH 등 교환

### 8.3 공급량 관리

- 사용자가 burn() 호출로 유통량 감소
- totalSupply가 실시간으로 반영됨

### 8.4 규정·보안 대응

- 의심 계정 발견 시 Owner가 lock() 호출
- 사후 조사 후 unlock()으로 해제

---

## 9. 로드맵

| 단계 | 내용 |
|------|------|
| Phase 1 | TRC-20 토큰 배포, Burn/Lock 구현 |
| Phase 2 | TronScan 등록, 소스 검증 |
| Phase 3 | SunSwap 유동성 풀, 스왑 가능 |
| Phase 4 | 커뮤니티·파트너십 확대 |

---

## 10. 팀 및 연락처

### 10.1 공식 연락처

| 항목 | 내용 |
|------|------|
| 이메일 | hosuk112233@gmail.com |
| 전화번호 | 82)010-6786-2109 |

### 10.2 소셜 및 리소스

| 항목 | URL |
|------|-----|
| 공식 웹사이트 | [URL 입력] |
| 백서 | [본 문서 URL 또는 호스팅 URL] |
| GitHub | [저장소 URL] |
| Telegram / Twitter | [채널 URL] |

### 10.3 팀 프로필

프로젝트 설립자 및 팀 구성원 정보는 공식 웹사이트에 공개됩니다.

---

## 11. 면책 조항

- 본 문서는 기술 및 프로젝트 설명 목적이며, 투자 권유, 법적·재정적 조언이 아니다.
- 토큰 취득·보유·거래에 따른 손실에 대해 프로젝트 팀은 책임지지 않는다.
- 규제 환경에 따라 서비스 제공이 제한될 수 있다.
- 최신 정보는 공식 채널을 통해 확인할 것을 권장한다.

---

## 부록 A. 함수 요약

| 함수 | 권한 | 설명 |
|------|------|------|
| transfer(to, amount) | 공개 | 전송 |
| approve(spender, amount) | 공개 | 승인 |
| transferFrom(from, to, amount) | 공개 | 위임 전송 |
| burn(amount) | 공개 | 소각 |
| lock(account) | Owner | 잠금 |
| unlock(account) | Owner | 해제 |
| transferOwnership(newOwner) | Owner | 소유권 이전 |
| checkLocked(account) | 공개(뷰) | 잠금 조회 |
| balanceOf(account) | 공개(뷰) | 잔액 |
| allowance(owner, spender) | 공개(뷰) | 승인 금액 |

---

## 부록 B. 관련 문서

| 문서 | 용도 |
|------|------|
| 레포트_TRC20_토큰_프로젝트.md | 기술 레포트 |
| 메인넷_배포_가이드.md | 배포 절차 |
| 전체_절차_가이드.md | 전체 흐름·첫 행동 |
| token-receive.html | 수신 확인 도구 |

---

*Link USD Whitepaper v1.0 — TRON TRC-20 스테이블코인*
