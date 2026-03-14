# GitHub 프로젝트 업로드 — 정확한 절차 (빠짐없이)

---

## 1. GitHub 가입 (계정 없으면)

1. 브라우저에서 **https://github.com** 접속
2. 우측 상단 **Sign up** 클릭
3. 이메일, 비밀번호, 사용자명 입력 후 가입 완료

---

## 2. 새 저장소(Repository) 만들기

1. **https://github.com** 접속 후 로그인
2. 우측 상단 **+** 버튼 클릭 → **New repository** 선택
3. 아래 항목 입력:

| 항목 | 입력값 |
|------|--------|
| **Repository name** | `link-directory` |
| **Description** | `Green Point (GRP) — TRON TRC20. Sun Pump + TronScan. Burn, Lock. MIT.` |
| **Public** | 선택 (기본값) |
| **Add a README file** | 체크 안 함 (비워둠) |
| **Add .gitignore** | None |
| **Choose a license** | None |

4. **Create repository** 클릭

---

## 3. 업로드할 화면으로 이동

저장소를 만들면 **빈 저장소 페이지**가 열림.

- URL 예: `https://github.com/[내유저명]/link-directory`
- 화면에 **"Quick setup"** 또는 **"uploading an existing file"** 링크가 보임

---

## 4. 파일 업로드 (웹에서 직접)

### 4-1. 업로드 버튼 찾기

1. 저장소 페이지에서 **"uploading an existing file"** 링크 클릭  
   **또는**
2. **README.md**가 없다면 "creating a new file" 대신 **"uploading an existing file"** 표시됨  
   **또는**
3. 파일 목록이 비어 있으면 **"Add file"** 버튼 → **"Upload files"** 선택

### 4-2. 업로드할 파일 끌어다 놓기

1. **"Upload files"** 영역에 **link-directory 폴더 안의 파일들**을 끌어다 놓기  
   - 또는 **"choose your files"** 클릭 → 파일 선택

2. **업로드할 파일 목록** (필수·권장):

| 파일 | 용도 |
|------|------|
| **README.md** | 저장소 메인 설명 (필수) |
| index.html | 메인 페이지 |
| tether-tools.html | LinkUSD 도구 |
| token-receive.html | 잔액 확인·보내기 |
| add-token.html | 토큰 추가 |
| tx-history.html | 거래 내역 |
| style.css | 스타일 |
| script.js | 스크립트 |
| banners.js | 배너 |
| LinkUSD_TRON.sol | 스마트 컨트랙트 |
| TetherUSD_Whitepaper.md | 백서 |
| 메인넷_배포_가이드.md | 배포 가이드 |
| 배포_전_할_일_순서.md | 배포 전 체크리스트 |
| TronScan_공식_가이드_정리.md | TronScan 가이드 |
| GitHub_업로드_절차.md | 이 문서 |
| LinkUSD_자체_보안_검토.md | 감사 보고서 대안 (TronScan 제출용) |
| GitHub_저장소_설명_입력용.md | Description·Topics 입력 참고 |

3. **업로드 제외** (선택):
   - `node_modules` 폴더 (없으면 무시)
   - `.git` 폴더 (숨김 폴더, 보통 안 보임)

### 4-3. 커밋 메시지 입력 후 업로드

1. 아래쪽 **Commit changes** 영역으로 스크롤
2. **Commit message** 칸에 예: `Green Point (GRP) - Sun Pump + TronScan 배포`
3. **Commit changes** 버튼 클릭

---

## 5. GitHub Pages 활성화 (웹사이트 URL 확보)

1. 저장소 페이지에서 **Settings** 탭 클릭  
   - URL: `https://github.com/[유저명]/link-directory/settings`

2. 왼쪽 메뉴에서 **Pages** 클릭  
   - **Build and deployment** 섹션

3. **Source**에서:
   - **Deploy from a branch** 선택
   - **Branch**: `main` (또는 `master`)
   - **Folder**: `/ (root)` 선택
   - **Save** 클릭

4. 1~2분 후 **Your site is live at** 아래에 URL 표시  
   - 예: `https://[유저명].github.io/link-directory/`

5. **공식 웹사이트 URL**로 사용:
   - `https://[유저명].github.io/link-directory/`
   - **백서 URL** 예: `https://[유저명].github.io/link-directory/TetherUSD_Whitepaper.html`  
     (또는 .md 파일을 GitHub가 렌더링: `https://[유저명].github.io/link-directory/TetherUSD_Whitepaper.md`)

---

## 6. URL 확인

| 항목 | URL |
|------|-----|
| 저장소 | `https://github.com/[유저명]/link-directory` |
| 웹사이트 (Pages) | `https://[유저명].github.io/link-directory/` |
| index.html | `https://[유저명].github.io/link-directory/index.html` |
| tether-tools | `https://[유저명].github.io/link-directory/tether-tools.html` |
| 백서 | `https://[유저명].github.io/link-directory/TetherUSD_Whitepaper.md` |

---

## 7. Git 명령어로 업로드 (대안)

웹 업로드 대신 터미널 사용 시:

```bash
cd c:\Users\hosuk\link-directory
git init
git add .
git commit -m "Green Point (GRP) - Sun Pump + TronScan 배포"
git branch -M main
git remote add origin https://github.com/[유저명]/link-directory.git
git push -u origin main
```

- `[유저명]`을 본인 GitHub 사용자명으로 변경
- push 시 GitHub 로그인(또는 토큰) 필요

---

## 8. 체크리스트

- [ ] GitHub 가입
- [ ] 새 저장소 생성 (이름: link-directory)
- [ ] 파일 업로드 (Upload files)
- [ ] Commit changes
- [ ] Settings → Pages → Deploy from a branch → main → / (root) → Save
- [ ] 웹사이트 URL 확인: `https://[유저명].github.io/link-directory/`
- [ ] 공식 웹사이트 URL 적어두기: _______________________
- [ ] 백서 URL 적어두기: _______________________
