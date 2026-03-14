# Green Point (GRP) — 텔레그램 채널 만들기

**예제·이미지 스펙·복사용 텍스트 전부 포함.**

---

## 1. 채널 생성 순서

| # | 단계 | 내용 |
|---|------|------|
| 1 | Telegram 앱 실행 | 모바일/데스크톱 |
| 2 | 메뉴 → **New Channel** | 채널 생성 |
| 3 | 채널 이름 입력 | 아래 예제 1 복사 |
| 4 | 채널 설명 입력 | 아래 예제 2 복사 |
| 5 | 채널 유형 | **Public** 선택 |
| 6 | 채널 링크(Username) | 아래 예제 3 참고 |
| 7 | 프로필 사진 설정 | 아래 이미지 스펙 참고 |
| 8 | 고정 메시지 작성 | 아래 예제 4 복사 |

---

## 2. 예제 (복사용)

### 예제 1 — 채널 이름

```
Green Point (GRP)
```

또는

```
GreenPoint Official
```

---

### 예제 2 — 채널 설명 (Channel Description)

```
Green Point (GRP) — TRON TRC20. Burn·Lock. Community.
Website, Whitepaper, Audit provided.
```

**영문 버전 (선택):**

```
Green Point (GRP) — TRON TRC20 token. Burn, Lock. Community project.
Website, Whitepaper, Self-audit report provided.
```

---

### 예제 3 — 채널 Username (링크용)

| 형식 | 예시 |
|------|------|
| `@채널명` | `@GreenPoint_GRP` 또는 `@GreenPointOfficial` |
| 최종 URL | `https://t.me/GreenPoint_GRP` |

**주의:** Username은 영문·숫자·언더스코어만 가능. 공백 불가.

---

### 예제 4 — 고정 메시지 (Pinned Message)

**전체 복사 → 채널에 첫 메시지로 발송 → 고정(Pin)**

```
🟢 Green Point (GRP) — TRON TRC20

🔗 Official Links
• Website: https://auto5862.github.io/link-directory/green-point.html
• TronScan: https://tronscan.org
• Sun Pump: https://sunpump.meme
• SunSwap: https://sunswap.com

📄 Docs
• Whitepaper: https://auto5862.github.io/link-directory/GreenPoint_Whitepaper.md
• Audit: https://auto5862.github.io/link-directory/GreenPoint_자체_보안_검토.md

📧 Contact: hosuk112233@gmail.com
```

---

### 예제 5 — 환영 메시지 (선택)

```
Welcome to Green Point (GRP) community.
TRON TRC20. Burn·Lock. Website, Whitepaper, Audit provided.
```

---

## 3. 이미지 스펙

### 3-1. 프로필 사진 (Profile Photo)

| 항목 | 값 |
|------|-----|
| **사이즈** | 512×512 픽셀 (권장) |
| **최소** | 200×200 |
| **형식** | PNG 또는 JPEG |
| **용량** | 5MB 이하 |
| **비고** | 원형으로 잘리므로 로고·아이콘은 중앙 배치 |

**사용 이미지:** `GreenPoint_logo_100x100.png`를 512×512로 리사이즈해서 사용 가능.  
또는 새로 `GreenPoint_logo_512x512.png` 제작.

---

### 3-2. 채널 배너/헤더 (선택, Premium)

| 항목 | 값 |
|------|-----|
| **사이즈** | 1280×640 픽셀 |
| **형식** | PNG, JPEG |
| **용량** | 5MB 이하 |
| **비고** | Telegram Premium 채널용. 없어도 됨. |

---

### 3-3. 이미지 제작 가이드

**프로필 사진 (512×512):**
- Green Point 로고 (초록색 #00d4aa 계열)
- 배경: 단색 또는 그라데이션
- 텍스트: "GRP" 또는 "Green Point" (선택)
- 중앙 정렬 (원형 크롭 대비)

**배너 (1280×640):**
- 좌측: 로고 + "Green Point (GRP)"
- 우측: "TRON TRC20 · Burn · Lock"
- 배경: 다크 톤 (#0d0d1a, #1a1a2e)
- 액센트: #00d4aa

---

## 4. 이미지 파일 (준비됨)

| 파일명 | 사이즈 | 용도 |
|--------|--------|------|
| `GreenPoint_logo_512x512.png` | 512×512 | 텔레그램 프로필 사진 ✓ |
| `GreenPoint_banner_1280x640.png` | 1280×640 | 채널 배너 (선택) ✓ |

---

## 5. 체크리스트

| # | 할 일 | 상태 |
|---|-------|------|
| 1 | 채널 생성 (Public) | ☐ |
| 2 | 채널 이름: `Green Point (GRP)` | ☐ |
| 3 | 채널 설명: 예제 2 복사 | ☐ |
| 4 | Username 설정 (예: `GreenPoint_GRP`) | ☐ |
| 5 | 프로필 사진 업로드 (512×512) | ☐ |
| 6 | 고정 메시지 (예제 4) 발송 후 Pin | ☐ |
| 7 | 링크 확보: `https://t.me/[채널명]` | ☐ |
| 8 | green-point.html 텔레그램 링크 수정 | ☐ |

---

## 6. green-point.html 수정

채널 생성 후 아래 URL을 `green-point.html`의 텔레그램 버튼에 넣기:

```
https://t.me/GreenPoint_GRP
```

(실제 채널 Username으로 교체)
