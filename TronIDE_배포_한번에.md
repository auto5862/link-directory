# TronIDE 배포 — 한 번에 (딱 이거만 하면 됨)

**하지 말 것:** TetherUSD.sol 사용 (Contract Name TetherUSD = 경고 원인). `LinkUSD_TRON.sol`만 사용.  
**통합 문서:** `배포_전_후_토큰등급_전부_업데이트.md`

---

## 1단계: 1_Storage.sol 고치기

### 1-1. TronIDE에서 1_Storage.sol 클릭

### 1-2. 안에 있는 내용 전부 지우기
- Ctrl+A (전체 선택) → Delete

### 1-3. 이 프로젝트 폴더의 LinkUSD_TRON.sol 열기
- Cursor 에디터에서 `LinkUSD_TRON.sol` 열기
- Ctrl+A (전체 선택) → Ctrl+C (복사)

### 1-4. TronIDE 1_Storage.sol에 붙여넣기
- TronIDE로 돌아가서 1_Storage.sol에 Ctrl+V (붙여넣기)

### 1-5. 확인
- 첫 줄: `// SPDX-License-Identifier: MIT`
- 4번째 줄: `contract LinkUSD {`
- 마지막 줄: `}`

→ JSON이 보이면 안 됨. Solidity 코드만 있어야 함.

### 1-6. 저장
- Ctrl+S

---

## 2단계: 배포

### 2-1. 왼쪽 Deploy 패널
- CONTRACT: **LinkUSD** 선택
- Deploy 버튼 클릭

### 2-2. TronLink
- 서명(Sign) 확인

### 2-3. 완료
- 컨트랙트 주소 복사 (T로 시작)

---

## 끝
