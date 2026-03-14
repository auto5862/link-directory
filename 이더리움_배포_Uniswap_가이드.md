# 이더리움 + MetaMask + Uniswap 가이드

**전체 순서** — 1단계 → 2단계 → 3단계 → 4단계 순서대로 진행.

---

## 전체 흐름 (한눈에 보기)

| 단계 | 할 일 | 완료 확인 |
|------|-------|-----------|
| 1 | Base 네트워크 MetaMask에 추가 | MetaMask 상단에 "Base" 표시 |
| 2 | Base에 ETH 넣기 | MetaMask에 ETH 잔액 보임 |
| 3 | Remix에서 토큰 배포 | 컨트랙트 주소(0x...) 받음 |
| 4 | Uniswap에서 유동성 풀 만들기 | 스왑 가능, 시세 표시됨 |

---

## 1단계: Base 네트워크 추가

1. **https://chainlist.org** 접속
2. **"테스트넷을 포함하세요"** 체크 **해제**
3. 검색창에 **"base"** 입력
4. **베이스 (Base)** 카드 → **"메타마스크에 추가"** 클릭
5. MetaMask 팝업 → **승인** 클릭

**완료 확인:** MetaMask 상단 네트워크가 **"Base"**로 보이면 됨.

---

## 2단계: Base에 ETH 넣기 ← 지갑이 Base로 바뀐 후 바로 할 일

**지갑이 Base로 바뀌었다면, 이제 ETH를 넣어야 함.** (가스비용)

### 방법 A: 거래소에서 출금

1. 업비트, 바이낸스, 코인베이스 등에서 **ETH** 보유 확인
2. **출금** 또는 **전송** 선택
3. **금액**: **0.005~0.01 ETH** (약 $15~50, 1 ETH 아님)
4. **네트워크**: 반드시 **Base** 선택 (이더리움 메인넷 아님)
5. **받는 주소**: MetaMask에서 **받기** 클릭 → 주소 복사 → 붙여넣기
6. 출금 실행

### 방법 B: MetaMask "자금 추가" 버튼

1. MetaMask에서 **"자금 추가"** 또는 **"Add funds"** 클릭
2. **매수(Buy)** 또는 **스왑(Swap)**으로 ETH 구매
3. 네트워크가 **Base**인지 확인 후 진행

**완료 확인:** MetaMask에 **ETH 잔액**이 보이면 됨.

**※ 필요한 양: 1 ETH 아님.** 가스비용으로 **0.005 ETH** 정도면 충분 (약 $15~25, 시세에 따라 다름). Base는 트랜잭션당 $0.01~0.10 수준.

**※ MetaMask에 "자금 추가" / "Add funds" 화면이 보이면 → 지금 2단계. ETH 넣으면 됨.**

---

## 3단계: Remix에서 토큰 배포

**2단계 완료했으면** (Base에 ETH 있음) → 이 단계 진행.

1. **https://remix.ethereum.org** 접속
2. 왼쪽 **File Explorer** → **contracts** 폴더 → **+** 버튼
3. 파일명 `LinkUSD_Ethereum.sol` 입력 후 생성
4. 이 프로젝트의 `LinkUSD_Ethereum.sol` 파일 내용 **전체 복사** → Remix에 붙여넣기 → 저장 (Ctrl+S)
5. 왼쪽 **Solidity Compiler** (두 번째 아이콘) 클릭 → **Compile LinkUSD_Ethereum.sol** 클릭 → 녹색 체크 뜨면 성공
6. 왼쪽 **Deploy & Run** (세 번째 아이콘) 클릭
7. **Environment**: `Injected Provider - MetaMask` 선택
8. MetaMask가 **Base** 네트워크인지 확인
9. **Contract**: `LinkUSD` 선택
10. **Deploy** 클릭 → MetaMask 팝업 **확인** → 대기
11. 배포 완료 후 아래 **deployed contracts** 영역에서 **주소(0x...)** 복사 → **메모장에 저장**

**완료 확인:** 0x로 시작하는 컨트랙트 주소를 받음.

---

## 4단계: Uniswap에서 유동성 풀 만들기

**3단계 완료했으면** (컨트랙트 주소 있음) → 이 단계 진행.

1. **https://app.uniswap.org** 접속
2. MetaMask 연결 (네트워크 **Base** 선택)
3. 상단 **Pool** 클릭 → **New position** (또는 **Add liquidity**)
4. **Select a token** 클릭 → 검색창에 **3단계에서 받은 컨트랙트 주소** 붙여넣기
5. **Import** 버튼 클릭 (토큰이 리스트에 없으면 Import 뜸)
6. **토큰 1**: ETH (또는 WETH)
7. **토큰 2**: Link USD (방금 Import한 것)
8. **금액 입력** (ETH 개수, LUSD 개수)
9. **Approve** 클릭 → MetaMask 서명
10. **Add** 또는 **Supply** 클릭 → MetaMask 서명
11. 완료 시 **스왑 가능, 시세 표시됨**

---

## 부록: BASE가 뭔가요?

**BASE** = Coinbase(거래소)가 만든 이더리움 2층(L2) 네트워크. 가스비 저렴, Uniswap 사용 가능.

---

## 부록: 용어 정리 (모르는 게 있으면 여기서 확인)

| 용어 | 뜻 |
|------|-----|
| **BASE** | Coinbase가 만든 이더리움 L2. 가스비 저렴. |
| **ChainList** | chainlist.org. MetaMask에 네트워크 추가해 주는 사이트. |
| **메인넷** | 실제 돈 쓰는 네트워크. 테스트넷과 반대. |
| **테스트넷** | 테스트용 네트워크. 가짜 ETH. |
| **가스비** | 트랜잭션 처리할 때 내는 수수료. |
| **Remix** | remix.ethereum.org. 브라우저에서 컨트랙트 배포하는 사이트. |
| **Uniswap** | app.uniswap.org. DEX. 토큰 스왑·유동성 풀. |
| **컨트랙트 주소** | 배포한 토큰의 주소. 0x로 시작. |
| **Import** | Uniswap에서 리스트에 없는 토큰을 주소로 추가하는 것. |
| **유동성 풀** | 스왑할 수 있게 ETH+토큰 넣어 두는 공간. |
