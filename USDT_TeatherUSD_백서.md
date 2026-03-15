# USDT (TeatherUSD) Whitepaper

**TRON TRC-20 · 탈중앙화 달러 페그 · 반테더 대안**

---

**문서 버전:** 1.1  
**최종 수정:** 2026  
**표준:** TRC-20 (TRON)  
**토큰:** USDT (TeatherUSD)

---

## Executive Summary

USDT (TeatherUSD)는 TRON 블록체인 위의 **탈중앙화** 구조로 발행된 달러 페그 스테이블코인이다. **테더(Tether)의 중앙화 한계**를 넘어, 블록체인 상에서 검증 가능한 방식으로 운영된다. Sun Pump를 통해 런치되며, SunSwap 등 TRON DEX에서 거래·유동성 제공이 가능하다.

---

## 1. 서론

### 1.1 탈중앙화와 반테더(Alternative)

**테더(USDT)의 한계:**

| 테더(Tether) | 한계 |
|--------------|------|
| 발행·예비자산 | 회사(Tether Ltd.)가 통제 |
| 검증 | 오프체인, 불투명 |
| 동결·소각 | 기업 재량 |

**우리의 포지션:**

| USDT (TeatherUSD) | 차이 |
|-------------------|------|
| 발행 | Sun Pump 플랫폼 — 온체인 생성 |
| 검증 | TronScan에서 실시간 조회 |
| 거래 | DEX(SunSwap) — 중앙 거래소 불필요 |

→ **탈중앙화**는 "관리·검증이 블록체인에 있다"는 뜻이다. **달러 페그**는 사용 목적(가치 척도)일 뿐, 중앙화를 의미하지 않는다. 우리는 **탈중앙화 구조**로 **달러와 궤를 같이 하는** 대안을 제공한다.

### 1.2 배경

- **Sun Pump**: TRON 기반 토큰 런치 플랫폼. 사용자가 TRX를 지불하고 토큰을 온체인 생성·상장한다.
- **USDT (TeatherUSD)**: Sun Pump에서 생성된 토큰으로, **USDT** 심볼을 사용한다.
- **목적**: 탈중앙화 달러 페그 대안, TRON 생태계 확장.

### 1.3 Link USD (LUSD)와의 구분

| 항목 | USDT (TeatherUSD) | Link USD (LUSD) |
|------|-------------------|-----------------|
| 심볼 | USDT | LUSD |
| 발행 방식 | Sun Pump 플랫폼 생성 | 자체 스마트 컨트랙트 배포 |
| Burn/Lock | 없음 (플랫폼 표준) | 있음 (온체인) |
| 용도 | Sun Pump 상장, TRON 확장 | 독립 스테이블코인 |

→ **서로 다른 토큰.** 본 백서는 **USDT (TeatherUSD)** 전용이다.

---

## 2. 토큰 명세

| 항목 | 값 | 비고 |
|------|-----|------|
| 토큰 이름 | USDT (TeatherUSD) | |
| 심볼 | USDT | |
| 표준 | TRC-20 | |
| 블록체인 | TRON | Mainnet |
| 발행 플랫폼 | Sun Pump | sunpump.meme |
| decimals | 6 | 1 USDT = 10^6 최소 단위 |

---

## 3. 기술 구조

### 3.1 TRC-20 표준

| 항목 | 내용 |
|------|------|
| **표준** | TRC-20 (TRON Token Standard) |
| **블록체인** | TRON Mainnet |
| **decimals** | 6 (1 USDT = 10^6 최소 단위) |
| **함수** | transfer, approve, transferFrom, balanceOf, allowance |

TRC-20은 ERC-20과 호환되는 토큰 표준이다. 모든 전송·승인·잔액은 **온체인**에 기록되며, TronScan에서 검증 가능하다.

### 3.2 발행 방식

- **Sun Pump**가 토큰을 생성한다. 플랫폼이 TRC-20 컨트랙트를 배포한다.
- TronLink·Trust Wallet 등에서 **USDT**로 표시된다.
- 컨트랙트 주소는 Sun Pump Launch 완료 후 TronScan에서 확인 가능하다.

### 3.3 블록체인·네트워크

| 항목 | 값 |
|------|-----|
| **네트워크** | TRON Mainnet |
| **확정 시간** | 약 3초 |
| **수수료** | TRX (Energy·Bandwidth) |
| **탐색기** | tronscan.org |

### 3.4 생태계 연동

| 연동 | 설명 |
|------|------|
| **지갑** | TronLink, Trust Wallet — Custom Token으로 주소 추가 |
| **DEX** | SunSwap — USDT/TRX 풀 생성·스왑 (AMM) |
| **탐색기** | TronScan — 주소·트랜잭션·이벤트 조회 |

---

## 4. 사용 시나리오

### 4.1 Sun Pump 상장

1. Sun Pump Launch에서 Token Name, Symbol, Description, Website, Telegram 입력
2. TRX 지불 후 토큰 생성
3. 컨트랙트 주소 확보

### 4.2 SunSwap 유동성 풀

1. SunSwap에서 USDT(TeatherUSD) + TRX 풀 생성
2. 유동성 공급 후 스왑 가능
3. 가격은 AMM 알고리즘에 의해 형성

### 4.3 P2P 전송

- TRC-20 transfer로 지갑 간 전송
- 수신자는 Custom Token 추가 후 잔액 확인

---

## 5. 로드맵

| 단계 | 내용 |
|------|------|
| Phase 1 | Sun Pump Launch, 토큰 생성 |
| Phase 2 | 웹사이트·백서·텔레그램 공개 |
| Phase 3 | SunSwap 유동성 풀, 스왑 가능 |
| Phase 4 | TRON 생태계 확장 |

---

## 6. 팀 및 연락처

| 항목 | 내용 |
|------|------|
| 이메일 | hosuk112233@gmail.com |
| 웹사이트 | https://auto5862.github.io/link-directory/usdt-sunpump.html |
| 백서 | 본 문서 |
| 감사 보고서 | USDT_TeatherUSD_감사_보고서.md |
| 텔레그램 | USDT TeatherUSD Official |

---

## 7. 면책 조항

- 본 문서는 기술 및 프로젝트 설명 목적이며, 투자 권유, 법적·재정적 조언이 아니다.
- 토큰 취득·보유·거래에 따른 손실에 대해 프로젝트 팀은 책임지지 않는다.
- USDT (TeatherUSD)는 Tether Ltd.의 공식 USDT가 아니다. 별도 프로젝트이다.
- 최신 정보는 공식 채널을 통해 확인할 것을 권장한다.

---

*USDT (TeatherUSD) Whitepaper v1.0 — TRON TRC-20 · Sun Pump*
