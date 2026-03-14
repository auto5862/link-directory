# Green Point (GRP) — 단계별 클릭 가이드 (주소·클릭 전부)

**하나씩 따라 하면 됨. 복사용 값 포함.**

---

# 1단계: 컨트랙트 배포 (TronIDE)

## 1-1. TronIDE 접속

1. 브라우저 주소창에 입력: **https://www.tronide.io/**
2. Enter
3. TronIDE 페이지 로드됨

---

## 1-2. 컨트랙트 파일 로드

1. 왼쪽 **파일 탐색기** 영역 확인
2. **+** 버튼 또는 **Create New File** 클릭
3. 파일명: `GreenPoint_TRON.sol` 입력
4. 프로젝트 폴더 `c:\Users\hosuk\link-directory\GreenPoint_TRON.sol` 파일 내용 **전체 복사**
5. TronIDE 편집기에 붙여넣기
6. **Ctrl+S** (저장)

---

## 1-3. 컴파일

1. 왼쪽 메뉴에서 **Solidity Compiler** 아이콘 클릭 (또는 Compile 탭)
2. **Compiler** 버전: `0.8.6` 또는 `tron_v0.8.6` 선택
3. **Compile GreenPoint_TRON.sol** 버튼 클릭
4. 녹색 체크 표시 나오면 성공

---

## 1-4. 배포

1. 왼쪽 메뉴에서 **Deploy & Run Transactions** 탭 클릭
2. **CONTRACT** 드롭다운에서 **GreenPoint** 선택
3. **Environment**: `Injected TronWeb` (TronLink 연결됨) 확인
4. **Deploy** 버튼 클릭
5. TronLink 팝업 → **확인** 클릭 (서명)
6. 배포 완료 후 **deployed at: Txxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx** 주소 표시
7. **해당 주소 전체 복사** → 메모장에 저장 (다음 단계에서 사용)

---

# 2단계: Record Token (TronScan)

## 2-1. Record Token 페이지 접속

1. 브라우저 주소창: **https://tronscan.org**
2. Enter
3. 상단 메뉴 **Tokens** 클릭
4. 드롭다운에서 **Record Token** 클릭
5. **TRC-20** 탭 선택 (이미 선택되어 있을 수 있음)

**직접 URL (TRC-20):**  
https://tronscan.org/#/tokens/record/trc20

---

## 2-2. 기입란 입력

| 기입란 | 입력값 (복사용) |
|--------|-----------------|
| Contract Address | (1단계에서 복사한 T로 시작하는 주소) |
| Contract Name | `GreenPoint` |
| Token Name | `Green Point` |
| Token Abbreviation | `GRP` |
| Total Supply | `1000000000000000` |
| Token Introduction | `Green Point (GRP) — TRON TRC20. Burn·Lock. Website, Telegram, Whitepaper, Audit provided.` |

6. **Submit** 또는 **Record** 버튼 클릭
7. TronLink 서명 → 확인

---

# 3단계: Update Token Basic Info

## 3-1. Update 페이지 접속

1. 브라우저 주소창에 입력:
   ```
   https://tronscan.org/#/tokens/update/TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6
   ```
2. Enter → Update Token 폼 로드

---

## 3-2. 기입하는 곳 (Record Information → Confirm → Submit)

**1) Record Information 화면**

| 기입란 | 입력값 (복사) |
|--------|---------------|
| Contract Address | `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` (자동 표시) |
| Token Name | `Green Point` |
| Token Abbreviation | `GRP` |
| Token Introduction | `Green Point (GRP) — TRON TRC20. Burn, Lock. Website, Telegram, Whitepaper, Audit.` |
| Total Supply | `1000000000` |

→ **Next** 클릭

**2) Confirm Information 화면 (Token Logo, Social Media)**

| 기입란 | 입력값 |
|--------|--------|
| Token Logo | **Upload** → `GreenPoint_logo_100x100_tron.png` (200KB 이하) |
| Project Official Website | `https://auto5862.github.io/link-directory/green-point.html` |
| Link for GitHub | `https://github.com/auto5862/link-directory` |
| Official Email | `hosuk112233@gmail.com` |
| Link for White Paper | `https://auto5862.github.io/link-directory/GreenPoint_Whitepaper.md` |
| Twitter | (비움) |
| Telegram | `https://t.me/GreenPoint_GRP` |

→ **Submit** 클릭 → TronLink **Sign** 클릭

---

# 4단계: 소스 코드 검증

## 4-1. 검증 페이지 접속

1. 브라우저 주소창: **https://tronscan.org/#/contracts/verify**
2. Enter

---

## 4-2. 기입하는 곳

| 기입란 | 입력값 |
|--------|--------|
| Contract Address | `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` |
| Main Contract | `GreenPoint` |
| Optimization | `No` |
| Runs | `0` |
| Compiler | `tron_v0.8.6` |
| License | `MIT` |
| VM Version | `default` |
| **계약 파일** | **Choose File** 클릭 → `GreenPoint_TRON.sol` 선택 |

3. **Verify** 또는 **Submit** 버튼 클릭
4. 검토 완료까지 대기 (몇 분~몇 시간)

---

# 5단계: 토큰 평판 업데이트

## 5-1. 문의 페이지 접속

1. 브라우저 주소창: **https://tronscan.org/#/tools/contactUs?feedbackType=tokenLevel**
2. Enter

---

## 5-2. 기입하는 곳 (복사해서 붙여넣기)

| 기입란 | 입력값 |
|--------|--------|
| Enter a token ID/token contract address | `TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` |
| Token Symbol | `GRP` |
| Token Name | `Green Point` |
| Token Standard | `TRC20` |
| Change to: (다음으로 변경) | `중립적` / `Neutral` |
| Token Info URL | `https://tronscan.org/#/contract/TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6` |
| Short Description | `Green Point (GRP) is an independent TRON TRC20 token. Burn, Lock. Whitepaper, website, Telegram, self-audit report provided. Request neutral rating.` |
| Project Official Website | `https://auto5862.github.io/link-directory/green-point.html` |
| Project Name | `Green Point` |
| White Paper | `https://auto5862.github.io/link-directory/GreenPoint_Whitepaper.md` |
| Audit Report | `https://auto5862.github.io/link-directory/GreenPoint_자체_보안_검토.md` |
| 연락처 / Contact | `hosuk112233@gmail.com` |
| 소셜 / Telegram | `https://t.me/GreenPoint_GRP` |

→ **Submit** 클릭

---

# 6단계: API 등록 (선택, 나중에 해도 됨)

1. 브라우저 주소창: **https://tronscan.org/#/myaccount/apiKeys**
2. 로그인 상태 확인
3. **Create API Key** 또는 **Add** 클릭
4. 애플리케이션 이름: `greenpoint-monitor`
5. 생성된 키를 `.env`에 저장 (GitHub에 올리지 않음)

---

# URL 한눈에 보기

| 단계 | URL |
|------|-----|
| TronIDE | https://www.tronide.io/ |
| Record Token | https://tronscan.org/#/tokens/record/trc20 |
| Update Token | https://tronscan.org/#/tokens/update/TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6 |
| 소스 검증 | https://tronscan.org/#/contracts/verify |
| 토큰 평판 | https://tronscan.org/#/tools/contactUs?feedbackType=tokenLevel |
| API 키 | https://tronscan.org/#/myaccount/apiKeys |

---

# 주소 (복사용)

**컨트랙트 주소:**
```
TPG7971YWN5kpMBwdzLbtMpEwJNMkh9Ux6
```

**발행자 주소:**
```
TVMfvZxNrTWE9jFoN4RBdyercKhLpRYrFm
```
