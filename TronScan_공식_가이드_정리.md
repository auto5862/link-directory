# TronScan 공식 가이드 정리

**출처:** https://support.tronscan.org (Basic Guide 포함)

### 공식 링크
- [계약 검증](https://support.tronscan.org/hc/en-us/articles/49339073980313-How-to-verify-your-contract)
- [주소 공개 태그 검증](https://support.tronscan.org/hc/en-us/articles/44804216760857-TronScan-Address-Public-Tag-Verification-Guide)
- [프로젝트 제출](https://support.tronscan.org/hc/en-us/articles/21841656901657-How-to-submit-a-project)
- [사기 신고](https://support.tronscan.org/hc/en-us/articles/21841611138585-How-to-report-a-scam)
- [토큰 정보 업데이트](https://support.tronscan.org/hc/en-us/articles/21841583000473-How-to-update-token-information)
- [Basic Guide](https://support.tronscan.org/hc/en-us/sections/360004072892-Basic-Guide)
- [잘못된 주소/금액으로 전송했을 때](https://support.tronscan.org/hc/en-us/articles/360042161511-What-should-I-do-if-I-transfer-money-to-the-wrong-address-or-amount)
- [수신 주소에 자금 미수령](https://support.tronscan.org/hc/en-us/articles/360042161531-What-should-I-do-if-the-receiving-address-did-not-get-the-funds)

---

## 잘못된 전송·중복 전송 — 돌려받을 수 있나?

**가이드:** [What should I do if I transfer money to the wrong address or amount?](https://support.tronscan.org/hc/en-us/articles/360042161511)

### TronScan 공식 답변 요약

| 상황 | 돌려받기 가능? |
|------|----------------|
| **잘못된 금액 전송** | 블록체인은 되돌릴 수 없음. **수신자만** 자발적으로 돌려보낼 수 있음 |
| **잘못된 주소로 전송** | 마찬가지. **수신 주소 소유자**가 돌려보내야 함 |
| **TronScan이 대신 돌려줌** | **불가능**. TronScan은 거래를 취소·역전·처리하지 않음 |

→ **수신자에게 직접 연락**해서 돌려보내 달라고 요청하는 수밖에 없음.

### 거래 실패(Failed)인 경우

- 자금이 **발신 주소를 떠나지 않음** → 그대로 있음. 다시 전송하면 됨.

---

## 중복 배포 (두 번 배포하고 하나만 쓴 경우)

| 구분 | 설명 |
|------|------|
| **배포에 쓴 TRX** | **환불 불가**. 한 번 쓰면 블록체인에 반영됨 |
| **두 번째 컨트랙트의 토큰** | 두 번째 컨트랙트도 **발행자(본인) 지갑**에 10억 토큰 들어감. 그 토큰은 그대로 본인 소유 |

**정리:**
- TRX (배포 수수료): 돌려받을 수 **없음**
- 두 번째 컨트랙트의 LUSD 토큰: 본인 지갑에 있음. 쓰지 않을 컨트랙트의 토큰은 그냥 두거나, 필요하면 burn 가능

---

## 콜드 월렛 (Cold Wallet)이란?

**인터넷에 연결되지 않은 지갑.** 시드/개인키를 오프라인에 보관.

| 구분 | 설명 |
|------|------|
| **핫 월렛** | TronLink 등 — 인터넷 연결, 브라우저에서 바로 서명 가능 |
| **콜드 월렛** | 하드웨어 지갑, 종이 지갑 등 — TronScan에 직접 "연결" 불가 |

**TronScan 태그 삭제 시:** 태그 제거 요청은 보통 **해당 주소로 TronScan에 연결**해서 해야 함.  
**콜드 월렛**은 연결할 수 없으므로 → **문의하기 > 기타**에서 피드백 제출 + **콜드 월렛 주소로 서명한 메시지**를 첨부해야 함.

- 서명 도구: https://tronscan.org/#/tools/verify-sign (Sign & Verify Message)
- 서명할 메시지 예: `I am the owner of the address [주소], and I am requesting to remove the tag [태그명]. The message is signed at [날짜시간].`

---

## 1. 메인 지갑 주소 공개 태그 검증 (배포 전 필수)

**배포 전에** 발행자 지갑 주소를 TronScan에 "이 프로젝트 소유"로 검증해두면, 나중에 토큰·계약 페이지에서 신뢰도가 올라감.

**가이드:** [TronScan Address Public Tag Verification Guide](https://support.tronscan.org/hc/en-us/articles/44804216760857-TronScan-Address-Public-Tag-Verification-Guide)

### 절차
1. https://tronscan.org/#/tools/verify-sign 접속
2. **Sign Message** 선택
3. TronLink 연결
4. 검증할 **주소 선택** (배포에 쓸 메인 지갑)
5. 메시지 입력: `I confirm this address belongs to [프로젝트명].` (예: Link USD)
6. **Sign Message** → 지갑에서 서명
7. 생성된 **서명 해시 + 원본 메시지**를 [문의하기](https://tronscan.org/#/tools/contactUs)로 제출

---

## 2. 계약 검증 (Verify Contract)

**가이드:** [How to verify your contract?](https://support.tronscan.org/hc/en-us/articles/49339073980313-How-to-verify-your-contract)

**도구:** https://tronscan.org/#/contracts/verify

### 입력값 (배포 시 설정과 정확히 일치해야 함)
| 항목 | 설명 |
|------|------|
| **Runs** | 최적화 사용 시, 배포 시 설정한 runs 수 |
| **Optimization** | 배포 시 최적화 사용 여부 (보통 No) |
| **License** | 오픈소스 라이선스 (없으면 None) |
| **Solidity Compiler Version** | 배포 시 사용한 컴파일러 버전 |
| **Main Contract** | `contract` 뒤의 계약명 (예: LinkUSD) |
| **Contract Address** | 배포된 컨트랙트 주소 |

### 제출
1. **Verify and Publish** 클릭
2. reCAPTCHA 완료
3. **Upload Contract File(s)** — 소스 코드 파일 업로드 (배포한 코드와 동일해야 함)

### 자주 나오는 오류
- **"Contract has not been deployed"** → 네트워크(Mainnet/Nile) 또는 주소 확인
- **"Please confirm the correct parameters"** → Runs, Optimization, Compiler, Main Contract 등이 배포 시와 다름

---

## 3. 토큰 발행·등록

**가이드:** [How to issue a token?](https://support.tronscan.org/hc/en-us/articles/21841548098329-How-to-issue-a-token)

- TRC20/721/1155: **계약 배포 시 자동 인식** (약 15분 소요)
- 수동 등록: **Tokens** → **Record a Token** → Contract Address, Token Introduction 등 입력

---

## 4. 토큰 정보 업데이트

**가이드:** [How to update token information?](https://support.tronscan.org/hc/en-us/articles/21841583000473-How-to-update-token-information)

- **Asset Management** → **Record a Token**에서 수정

---

## 5. 프로젝트 제출

**가이드:** [How to submit a project?](https://support.tronscan.org/hc/en-us/articles/21841656901657-How-to-submit-a-project)

- **문의하기** → **Submit Project** 선택 후 제출
- TVL 리스트: 프로젝트 제출
- TVC 리스트: 24시간 거래량 $1M 달성 시 자동 등록

---

## 6. 위험 보고 (Risk Report) — 오탐이면 설정 해지

**위치:** tronscan.org → **문의하기** → **위험 보고**

### TronScan 공식 문구
- **"증거를 첨부하지 않으면 오탐으로 처리됩니다."** (Please attach evidence of fraudulent activity. Otherwise, the report will be processed as a **false positive (오탐)**.)
- 즉, **사기 신고에 증거가 없으면 → 오탐 처리 → 태그/설정 해지**됨.

### 사기가 아닌 경우 (오탐)
- 프로젝트 테스트, 시행착오 → 사기 아님
- 누군가를 사기로 볼 만한 정황이 없음 → **오탐**으로 신청 가능

---

## 7. 오탐 해제·억울함 토로 — "사기가 아니다" 각인시키기

### 방법 1: 태그 제거 (Tag Removal)
- **문의하기** → **태그 제거**
- TronLink에서 **발행자 주소** 또는 **계약 배포자 주소**로 연결
- 토큰/계약 주소 입력 → 위험·사기 태그 제거 요청

### 방법 2: 문의하기 > 기타
- **문의하기** → **기타**
- 설명: "프로젝트 테스트였으며, 사기로 볼 만한 정황이 없습니다. 오탐으로 처리해 주세요."

### 방법 3: 문제 및 제안
- **문의하기** → **문제 및 제안**
- **피드백 유형**: 적절한 항목 선택 (예: 데이터 누락/오류 또는 기타)
- **간략 설명**: "본 토큰은 프로젝트 테스트용입니다. 시행착오 과정에서 발생한 것으로, 사기로 볼 만한 정황이 없습니다. 오탐 해제를 요청합니다."
- **증명 이미지**: GitHub 저장소, 백서, 웹사이트 스크린샷 등 첨부

### 방법 4: 업데이트 토큰 등급
- **문의하기** → **업데이트 토큰 등급**
- 웹사이트, 백서, 소셜, 이메일 제출 → 신뢰도 상향 요청

### "사기 아님" 각인용 제출 자료
| 자료 | 용도 |
|------|------|
| GitHub 저장소 URL | 프로젝트 공개, 개발 이력 |
| 백서 | 프로젝트 목적·기술 명시 |
| 웹사이트 | 공식 채널 존재 |
| 자체 보안 검토 | `LinkUSD_자체_보안_검토.md` |

---

## 8. 사기 신고

**가이드:** [How to report a scam?](https://support.tronscan.org/hc/en-us/articles/21841611138585-How-to-report-a-scam)

- 사기 피해 신고 절차

---

## 9. Basic Guide (기본 가이드)

**목록:** https://support.tronscan.org/hc/en-us/sections/360004072892-Basic-Guide

---

## 10. 문의하기 탭 정리 (한눈에)

| 탭 | 용도 |
|------|------|
| 위험 보고 | 사기 주소 신고 (증거 없으면 **오탐** 처리) |
| 태그 제출 | 주소에 공개 태그 추가 |
| **태그 제거** | **위험/사기 태그 해제** (발행자·배포자로 연결) |
| 업데이트 토큰 등급 | 토큰 평판 상향 |
| 토큰 가격 정보 제출 | 가격 피드 |
| 업데이트 토큰 기본 정보 | 로고·설명 등 |
| 감사 보고서 제출 | 보안 감사 문서 |
| 프로젝트 제출하기 | TVL 리스트 등록 |
| 문제 및 제안 | **억울함·오탐 해제 요청** |
| 기타 | 연결 불가 시 지원 요청 |

| 항목 | 링크 |
|------|------|
| SUN Network(Dappchain) | 해당 섹션 |
| How to Build a Node? | 해당 문서 |
| 잘못된 주소/금액으로 전송했을 때 | 해당 문서 |
| 수신 주소에 자금 미수령 | 해당 문서 |
| 자금 손실 시 | 해당 문서 |
| 거래 실패 이유 | 해당 문서 |
| 실패한 거래에도 수수료가 부과되는 이유 | 해당 문서 |
| 태그 삭제 시 필요한 지갑에 연결할 수 없을 때 (콜드 월렛) | 해당 문서 |
| 토큰 발행 방법 | 해당 문서 |
| 토큰 정보 업데이트 | 해당 문서 |
| 사기 신고 | 해당 문서 |
| 프로젝트 제출 | 해당 문서 |
| 주소 공개 태그 검증 | 해당 문서 |
| 계약 검증 | 해당 문서 |
