# Remixd — TronIDE에서 로컬 폴더 연결 (저장 가능)

**출처:** [Remixd 공식 문서](https://remix-ide.readthedocs.io/en/latest/remixd.html#update-to-the-latest-remixd)

TronIDE(Remix 기반)와 컴퓨터 폴더를 연결하면 **웹 IDE에서 수정한 내용이 로컬 파일에 바로 저장**됨.

---

## 1. Remixd 설치

터미널(PowerShell 또는 CMD)에서:

```
npm install -g @remix-project/remixd
```

**이전 버전 있으면 먼저 삭제:**
```
npm uninstall -g remixd
npm install -g @remix-project/remixd
```

**버전 확인:**
```
remixd -v
```

---

## 2. Remixd 실행 (폴더 공유)

**link-directory 폴더를 TronIDE에 공유:**

```
remixd -s C:\Users\hosuk\link-directory -u https://www.tronide.io
```

- `-s` = 공유할 폴더 경로
- `-u` = 연결할 IDE URL — **브라우저 주소창과 정확히 일치** (www 있으면 www 포함)

**실행 후** 터미널 창 그대로 두기. 끄면 연결 끊김.

---

## 3. TronIDE에서 연결

1. **tronide.io** 접속
2. 왼쪽 **PLUGIN MANAGER** → **REMIXD** → **Activate**
3. **FILE EXPLORERS** → **Connect to a local Plugin** (또는 "connect to localhost") 클릭
4. 모달에서 **Connect** 클릭

연결되면 **localhost** 워크스페이스에 `link-directory` 폴더 내용이 보임.

---

## 4. 사용 방법

- **localhost** → **contracts** → **LinkUSD_TRON.sol** 열기
- 수정 후 **Ctrl+S** → 로컬 파일에 저장됨 (브라우저 저장 창 안 뜸)
- Solidity Compiler → Compile → Deploy

---

## 5. 주의사항

- Remixd 실행 중인 터미널 **끄지 말 것**
- 포트 65520 사용. 방화벽에서 막혀 있으면 연결 실패
- **TronIDE 연결 실패 시:** Remixd 기본 허용 URL이 remix.ethereum.org임. `-u https://tronide.io`로 명시했으므로 시도. 실패하면 Remix(remix.ethereum.org) + TRON 플러그인 사용

---

## 6. 연결 끊기

Remixd 실행 중인 터미널에서 **Ctrl+C**

---

## 7. 오류: "Cannot read/write to path outside shared folder"

**원인:** TronIDE 기본 파일(1_Storage.sol, 4_Trc10.sol 등)이나 다른 워크스페이스 경로를 열면 Remixd 공유 폴더 밖을 접근하려 해서 발생.

**해결:**

| 방법 | 설명 |
|------|------|
| **A. localhost만 사용** | FILE EXPLORERS에서 **localhost**만 열기. 기본 workspace 파일(1_Storage.sol 등)은 **열지 말 것** |
| **B. Load a local file 사용** | Remixd 대신 **Load a local file** → LinkUSD_TRON.sol 선택. 저장은 안 되지만 컴파일·배포는 가능 |
| **C. Remixd 재시작** | 터미널에서 Ctrl+C로 끄고, `remixd -s C:\Users\hosuk\link-directory -u https://www.tronide.io` 다시 실행 |
| **D. 경로 확인** | `-s` 뒤 경로가 `C:\Users\hosuk\link-directory`인지 확인. 다른 드라이브/폴더면 오류 가능 |

**추천:** Remixd 오류 나면 → **Load a local file**로 진행 (지금_할_일_순서.md 방법 2)
