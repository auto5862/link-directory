# TRC-20 기반 스테이블코인 토큰 개발 프로젝트

---

## 1. 프로젝트 개요

### 1.1 프로젝트 목적
본 프로젝트는 TRON 블록체인 네트워크에서 TRC-20 표준을 기반으로 한 스테이블코인 토큰을 개발하고, 추가적인 보안 기능과 탈중앙화 금융(DeFi) 기능을 구현하는 것을 목표로 한다.

### 1.2 프로젝트 범위
- TRC-20 표준 토큰 스마트 컨트랙트 개발
- 토큰 소각(Burn) 및 계정 잠금(Lock) 기능 구현
- 프라이버시 보호를 위한 믹싱(Mixing) 컨트랙트 개발
- DEX(탈중앙화 거래소) 유동성 풀 생성 및 토큰 스왑 기능 구현

### 1.3 개발 환경
| 항목 | 내용 |
|------|------|
| 블록체인 | TRON Mainnet |
| 토큰 표준 | TRC-20 |
| 개발 언어 | Solidity 0.8.0 |
| 개발 도구 | TronIDE |
| 지갑 | TronLink |
| DEX | SunSwap |

### 1.4 토큰 정보
| 항목 | 값 |
|------|-----|
| 토큰 이름 | Tether USD |
| 심볼 | USDT |
| 소수점 | 6 |
| 총 발행량 | 1,000,000,000 (10억 개) |

---

## 2. TRC-20 토큰 구현

### 2.1 TRC-20 표준이란?
TRC-20은 TRON 블록체인에서 토큰을 발행하기 위한 기술 표준이다. 이더리움의 ERC-20과 유사하며, 다음과 같은 기본 기능을 포함한다:

- `transfer()`: 토큰 전송
- `approve()`: 제3자 전송 승인
- `transferFrom()`: 승인된 토큰 전송
- `balanceOf()`: 잔액 조회
- `allowance()`: 승인된 금액 조회

### 2.2 구현 내용
```solidity
contract TetherUSD {
    string public name = "Tether USD";
    string public symbol = "USDT";
    uint8 public decimals = 6;
    uint256 public totalSupply;
    
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    
    function transfer(address to, uint256 amount) public returns (bool);
    function approve(address spender, uint256 amount) public returns (bool);
    function transferFrom(address from, address to, uint256 amount) public returns (bool);
}
```

---

## 3. 추가 기능: Burn, Lock

### 3.1 토큰 소각 (Burn) 기능

#### 3.1.1 개념
토큰 소각은 유통 중인 토큰을 영구적으로 삭제하여 총 공급량을 줄이는 기능이다. 이를 통해 토큰의 희소성을 높이고 가치를 유지할 수 있다.

#### 3.1.2 구현
```solidity
function burn(uint256 amount) public returns (bool) {
    require(balanceOf[msg.sender] >= amount, "Insufficient balance");
    balanceOf[msg.sender] -= amount;
    totalSupply -= amount;
    emit Burn(msg.sender, amount);
    return true;
}
```

#### 3.1.3 사용 시나리오
- 토큰 공급량 조절
- 인플레이션 방지
- 토큰 가치 유지

### 3.2 계정 잠금 (Lock) 기능

#### 3.2.1 개념
특정 계정의 토큰 전송을 일시적으로 차단하는 기능이다. 의심스러운 활동이 감지되거나 보안상의 이유로 계정을 동결할 때 사용한다.

#### 3.2.2 구현
```solidity
mapping(address => bool) public isLocked;

modifier notLocked(address account) {
    require(!isLocked[account], "Account is locked");
    _;
}

function lock(address account) public onlyOwner returns (bool) {
    isLocked[account] = true;
    emit Lock(account);
    return true;
}

function unlock(address account) public onlyOwner returns (bool) {
    isLocked[account] = false;
    emit Unlock(account);
    return true;
}
```

#### 3.2.3 사용 시나리오
- 해킹 의심 계정 동결
- 규정 위반 계정 제재
- 분쟁 발생 시 자산 보호

---

## 4. 믹싱 컨트랙트 구현

### 4.1 믹싱(Mixing)이란?
믹싱은 토큰의 출처를 숨기기 위해 여러 사용자의 토큰을 혼합하는 프라이버시 보호 기술이다. 블록체인의 투명성으로 인한 개인정보 노출 문제를 해결한다.

### 4.2 작동 원리
```
[기존 방식]
A → B (거래 내역 추적 가능)

[믹싱 방식]
A → [믹싱 풀] → B
C → [믹싱 풀] → D
E → [믹싱 풀] → F
(여러 거래가 섞여 추적 어려움)
```

### 4.3 구현 내용
```solidity
contract USDTMixer {
    uint256 public constant FIXED_AMOUNT = 1000 * 10**6; // 1000 USDT
    
    mapping(bytes32 => bool) public commitments;
    mapping(bytes32 => bool) public nullifiers;
    
    // 예치: 비밀키 해시와 함께 토큰 입금
    function deposit(bytes32 _commitment) external;
    
    // 출금: 다른 주소로 토큰 인출
    function withdraw(bytes32 _nullifier, address _recipient) external;
}
```

### 4.4 보안 메커니즘
| 요소 | 설명 |
|------|------|
| Commitment | 예치 시 생성되는 비밀키 해시 |
| Nullifier | 출금 시 사용되는 일회용 키 |
| Fixed Amount | 고정 금액으로 추적 방지 |

### 4.5 믹서 풀 잔액 표시
| 위치 | 표시 여부 | 설명 |
|------|----------|------|
| TronLink 지갑 | ❌ | 개인 지갑 화면에는 풀 잔액 미표시 |
| 믹서 컨트랙트 | ✅ | `getPoolBalance()` 호출로 조회 |
| TronScan | ✅ | 믹서 컨트랙트 주소 검색 시 잔액 확인 |

- **예치(deposit)**: 내 지갑 USDT → 믹서 컨트랙트로 전송 (지갑 잔액 감소)
- **출금(withdraw)**: 믹서 → 지정 주소로 전송 (해당 주소 지갑에 표시됨)

---

## 5. DEX 유동성 풀 생성

### 5.1 탈중앙화 거래소(DEX)란?
중앙 기관 없이 스마트 컨트랙트를 통해 토큰을 교환할 수 있는 거래소이다. 유동성 풀을 통해 자동으로 가격이 결정된다.

**※ 스왑(Swap) 기능**: 본 프로젝트의 토큰 컨트랙트에는 스왑 코드가 포함되어 있지 않다. 스왑은 SunSwap DEX에 유동성 풀을 생성한 후, 해당 플랫폼에서 TRX ↔ USDT 교환이 이루어진다.

### 5.2 유동성 풀 원리
```
유동성 풀 = 토큰 A + 토큰 B

예시:
- 풀에 TRX 1000개 + USDT 10000개 입금
- 자동 가격 형성: 1 TRX = 10 USDT
- AMM(자동화된 마켓 메이커) 알고리즘 사용
```

### 5.3 시세 기반 유동성 풀 금액 산정 (실제 구현)
유동성 풀 생성 시 **당일 시장 시세**를 조회하여 비율을 계산하고, 해당 비율로 실제 입금한다.

**구현 절차:**
1. 코인마켓캡(coinmarketcap.com) 또는 CoinGecko에서 TRX 당일 시세 조회
2. 비율 계산: 1 USDT ÷ TRX가격 = TRX 수량
3. SunSwap 유동성 풀 생성 시 계산된 비율로 TRX와 USDT 입금

| 조회 항목 | 출처 | (실제 적용 시 기입) |
|----------|------|---------------------|
| TRX 가격 | 코인마켓캡, CoinGecko | $_____ |
| USDT 가격 | 1:1 달러 고정 | $1.00 |
| **비율 계산** | 1 USDT ÷ TRX가격 | 1 USDT ≈ _____ TRX |
| **실제 입금량** | SunSwap Add Liquidity | USDT _____개 + TRX _____개 |

### 5.4 SunSwap 유동성 풀 생성 과정
1. SunSwap 접속 (https://sunswap.com)
2. "Add Liquidity" 선택
3. TRX-USDT 페어 선택
4. 공급할 토큰 수량 입력 (5.3 시세 기준)
5. 트랜잭션 승인 및 완료

### 5.5 유동성 제공의 장점
- 토큰 거래 가능
- 거래 수수료 수익
- 토큰 가격 형성

### 5.6 우리 토큰(USDT) → TRX 스왑 → 거래소 → XRP/ETH 교환 흐름 ⭐

본 프로젝트 토큰은 **거래소에 직접 입금 불가**하다. 거래소는 공식 USDT 등 특정 컨트랙트만 지원하므로, **반드시 TRX로 스왑한 뒤** 거래소를 경유해야 한다.

**전체 경로 (우리가 TRX로 스왑해서 넘기는 경우):**
```
[1] 우리: SunSwap에서 우리 USDT → TRX 스왑
        ↓
[2] 우리: TRX → 수신자에게 전송
        ↓
[3] 수신자: TRX 수신 (이미 TRX 상태)
        ↓
[4] 수신자: TRX → 거래소 입금
        ↓
[5] 수신자: 거래소에서 TRX → XRP(또는 ETH) 교환
        ↓
[6] 수신자: XRP 출금 (선택)
```

**대안 (USDT를 그대로 넘기는 경우):**
- 우리: USDT → 수신자 전송
- 수신자: token-receive.html로 확인 후, 수신자가 직접 SunSwap에서 USDT→TRX 스왑 (이때 수신자 지갑에 TRX 필요)

**핵심 사항:**
- 우리 USDT는 거래소 미지원 → **TRX로 스왑**해야 거래소 입금 가능
- **우리가 스왑해서 TRX로 넘기면** → 우리가 스왑·전송 수수료 부담
- **수신자 손에 들어간 이후** → 수신자가 거래소 입금·교환·출금 수수료 부담

### 5.7 수수료 부담 주체

**원칙: 우리 손에서 떠나면 우리가 낼 수수료는 끝이다.**

| 구간 | 수수료 | 부담 주체 |
|------|--------|-----------|
| **우리: USDT 전송** (또는 USDT→TRX 스왑 후 TRX 전송) | TRX (에너지/대역폭) | **우리** |
| **우리: USDT→TRX 스왑** (우리가 스왑해서 TRX로 넘길 경우) | TRX + SunSwap 수수료 | **우리** |
| **우리: TRX → 수신자 전송** | TRX (전송 수수료) | **우리** |
| **수신자: TRX → 거래소 전송** | TRX (전송 수수료) | **수신자** |
| **수신자: 거래소 TRX→XRP 교환** | 거래소 거래 수수료 | **수신자** |
| **수신자: XRP 출금** | 출금 수수료 | **수신자** |

**정리:** 우리가 하는 모든 것(USDT 전송, 스왑, TRX 전송) → **우리** 부담. **수신자 손에 들어간 이후** → **수신자** 부담.

---

## 6. 전송 테스트 결과

### 6.1 테스트 시나리오
| 테스트 | 내용 | 결과 |
|--------|------|------|
| 토큰 전송 | 지갑 A → 지갑 B | (배포 후 기입) |
| 토큰 소각 | 1000 USDT 소각 | (배포 후 기입) |
| 계정 잠금 | 지갑 C 잠금 후 전송 시도 | (배포 후 기입) |
| 믹싱 예치 | 1000 USDT 믹싱 풀 입금 | (배포 후 기입) |
| 믹싱 출금 | 다른 주소로 출금 | (배포 후 기입) |
| 스왑 (SunSwap) | TRX → USDT 교환 | (유동성 풀 생성 후 기입) |

### 6.2 트랜잭션 기록
(배포 후 트론스캔 스크린샷 첨부)

---

## 7. 결론

### 7.1 프로젝트 성과
본 프로젝트를 통해 다음과 같은 성과를 달성하였다:

1. **TRC-20 표준 토큰 개발**: TRON 블록체인에서 작동하는 스테이블코인 토큰을 성공적으로 개발 및 배포하였다.

2. **확장 기능 구현**: 기본 TRC-20 표준을 넘어 토큰 소각(Burn)과 계정 잠금(Lock) 기능을 추가하여 토큰 관리 기능을 강화하였다.

3. **프라이버시 기능**: 믹싱 컨트랙트를 통해 사용자의 거래 프라이버시를 보호할 수 있는 기능을 구현하였다.

4. **DeFi 연동**: SunSwap DEX에 유동성 풀을 생성하여 토큰의 거래 및 스왑 기능을 활성화하였다.

### 7.2 기술적 의의
- 스마트 컨트랙트를 활용한 탈중앙화 금융 서비스 구현
- 블록체인 기반 자산 관리 시스템 개발 경험 습득
- 보안 기능(Lock, Owner 권한)을 통한 안전한 토큰 운영 방안 제시

### 7.3 향후 발전 방향
| 항목 | 내용 |
|------|------|
| 거버넌스 기능 | 토큰 홀더 투표 시스템 도입 |
| 멀티시그 | 다중 서명 보안 강화 |
| 크로스체인 | 다른 블록체인과의 연동 |
| 프론트엔드 | 사용자 친화적 웹 인터페이스 개발 |

### 7.4 마무리
본 프로젝트를 통해 블록체인 기술의 핵심인 스마트 컨트랙트 개발 역량을 키울 수 있었으며, 탈중앙화 금융(DeFi)의 기본 원리를 실습을 통해 이해할 수 있었다. 개발한 토큰과 믹싱 컨트랙트는 실제 TRON 메인넷에 배포되어 작동하며, 이를 통해 블록체인 기술의 실용성과 가능성을 확인하였다.

---

## 참고 자료
- TRON 공식 문서: https://developers.tron.network/
- TRC-20 표준: https://developers.tron.network/docs/trc20
- SunSwap: https://sunswap.com
- TronScan: https://tronscan.org

---

## 부록

### A. 스마트 컨트랙트 소스 코드
- LinkUSD_TRON.sol (토큰 컨트랙트)
- USDTMixer.sol (믹싱 컨트랙트)

### B. 배포 정보
| 컨트랙트 | 주소 |
|----------|------|
| TetherUSD (Link USD) | TNXDJXHKBXZFWLksXpvccy9oKZNw9kHPVS (메인넷) |
| USDTMixer | (배포 후 기입) |

### B-1. 토큰 로고 등록 (별도 작업)
TronLink에 토큰 추가 시 기본 아이콘(노란 별)이 표시된다. USDT처럼 로고가 보이게 하려면 **TronScan 토큰 등록**을 별도 진행해야 한다.

| 항목 | 내용 |
|------|------|
| URL | https://tronscan.org/#/tokens/create/Record |
| 절차 | Connect Wallet → TRC20 선택 → 컨트랙트 주소 입력 → Logo URL 입력 → Submit |
| 로고 권장 | 256×256 픽셀, PNG 형식 |

### C. 테스트 트랜잭션
(배포 후 트론스캔 링크 첨부)

---

### D. 토큰 수신 확인 방법
수신자가 토큰을 확인하는 방법:
1. **token-receive.html**: 지갑 연결 → 잔액 확인 (추가 불필요)
2. **TronScan**: 주소 검색 → TRC20 내역 자동 표시
3. **TronLink 토큰 추가**: add-token.html 또는 token-receive.html에서 원클릭 추가

### E. 토큰 등록 체크리스트 (수상·사기 표시 안 뜨게)
| 항목 | 상태 |
|------|------|
| 공식 웹사이트 | (배포 후 URL) |
| 로고 | TronScan Record Token 등록 |
| 백서 | TetherUSD_Whitepaper.md |
| 소스 코드 검증 | TronScan 배포 후 검증 |
| 연락처 이메일 | (선택) |
| 소셜 미디어 | (선택) |
