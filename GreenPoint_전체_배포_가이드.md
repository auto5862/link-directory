# Green Point (GRP) — 전체 배포 가이드 (최종)

**순서대로 진행. 빠짐없이.**

---

# 0. 배포 전 준비 (미리 완료)

| # | 항목 | 확인 |
|---|------|------|
| 1 | GitHub: LUSD → Green Point 전환 (README, Description) | ☐ |
| 2 | GitHub Pages: green-point.html 공개 | ☐ |
| 3 | 텔레그램 채널 생성 | ☐ |
| 4 | 트위터/X 계정 준비 | ☐ |
| 5 | 백서 URL 확정 | ☐ |
| 6 | 자체 감사보고서: `GreenPoint_자체_보안_검토.md` | ✓ (준비됨) |

**URL 예시 (본인 것으로 교체):**
- 웹사이트: `https://[유저명].github.io/link-directory/green-point.html`
- 백서: `https://[유저명].github.io/link-directory/GreenPoint_Whitepaper.md`
- 자체 감사: `https://[유저명].github.io/link-directory/GreenPoint_자체_보안_검토.md`
- 텔레그램: `https://t.me/[채널명]`
- 트위터: `https://x.com/[계정명]`

---

# 1. 태그 등록 (배포 전 필수)

## 1-1. Sign Message

**URL:** https://tronscan.org/#/tools/verify-sign

| 기입란 | 입력값 |
|--------|--------|
| Address | TronLink 연결된 발행자 주소 (그대로) |
| Message to Sign | `I confirm this address belongs to Green Point.` |

→ **Sign Message** 클릭 → TronLink 서명 → **서명 해시 + 원본 메시지** 전체 복사

## 1-2. 태그 제출

**URL:** https://tronscan.org/#/tools/contactUs  
**Subject:** **Submit Tag** 선택

| 기입란 | 입력값 |
|--------|--------|
| **Address** | 발행자 지갑 주소 (예: TVMfvZxNrTWE9jFoN4RBdyercKhLpRYrFm) |
| **Tag** | `Green Point` |
| **Short Description** | **맨 위에** 서명 해시 + 원본 메시지 붙여넣기. 그 아래: `Green Point (GRP) — TRON TRC20. Burn·Lock. Website, Telegram, Whitepaper, Audit provided.` |
| **Project Official Website** | `https://[유저명].github.io/link-directory/green-point.html` |
| **Project Name** | `Green Point` |
| **Contact Info** | `hosuk112233@gmail.com` (또는 본인 이메일) |

→ **Submit** 클릭

---

# 2. 배포 (TronIDE)

| 단계 | 내용 |
|------|------|
| 1 | TronIDE → Load **GreenPoint_TRON.sol** |
| 2 | Compile |
| 3 | CONTRACT: **GreenPoint** 선택 |
| 4 | Deploy → TronLink 서명 |
| 5 | **컨트랙트 주소 복사** (T로 시작) |

---

# 3. Record Token

**URL:** https://tronscan.org → Tokens → Record Token → **TRC-20** 선택

| 기입란 | 입력값 |
|--------|--------|
| Contract Address | 배포한 주소 |
| Contract Name | `GreenPoint` |
| Token Name | `Green Point` |
| Token Abbreviation | `GRP` |
| Total Supply | `1000000000000000` |
| Token Introduction | `Green Point (GRP) — TRON TRC20. Burn·Lock. Website, Telegram, Whitepaper, Audit provided.` |

---

# 4. Update Token Basic Info

**URL:** https://tronscan.org/#/tokens/update/[컨트랙트주소]

| 기입란 | 입력값 |
|--------|--------|
| Token Introduction | `Green Point (GRP) — TRON TRC20. Burn, Lock. Website, Telegram, Whitepaper, Audit.` |
| Decimals | `6` |
| Token Logo | 100×100 PNG, 200KB 이하 |
| Project Official Website | GitHub Pages URL |
| Link for GitHub | `https://github.com/[유저명]/link-directory` |
| Official Email | 이메일 |
| Link for White Paper | 백서 URL |
| Total Supply | `1000000000` |
| Issuer | 발행자 지갑 주소 |
| Twitter | 트위터 URL (또는 비움) |
| Telegram | 텔레그램 URL |

---

# 5. 소스 코드 검증

**URL:** https://tronscan.org/#/contracts/verify

| 기입란 | 입력값 |
|--------|--------|
| Contract Address | 배포한 주소 |
| Main Contract | `GreenPoint` |
| Optimization | `No` |
| Runs | `0` |
| Compiler | `tron_v0.8.6` |
| License | `MIT` |
| VM Version | `default` |
| **계약 파일** | **GreenPoint_TRON.sol** 전체 업로드 |

---

# 6. 토큰 평판 업데이트

**URL:** https://tronscan.org/#/tools/contactUs?feedbackType=tokenLevel

| 기입란 | 입력값 |
|--------|--------|
| 토큰 ID 또는 계약 주소 | 배포한 주소 |
| 토큰 심볼 | `GRP` |
| 토큰 이름 | `Green Point` |
| 토큰 표준 | `TRC20` |
| 토큰 정보 URL | `https://tronscan.org/#/contract/[배포한주소]` |
| 다음으로 변경 | `중립적` |
| **간략 설명** | `Green Point (GRP) is an independent TRON TRC20 token. Burn, Lock. Whitepaper, website, Telegram, self-audit report provided. Request neutral rating.` |
| 프로젝트 공식 웹사이트 | GitHub Pages URL |
| 백서 | 백서 URL |
| **Audit Reports** | `https://[유저명].github.io/link-directory/GreenPoint_자체_보안_검토.md` |
| 연락처 | 이메일 |
| 소셜 | 텔레그램 URL |

---

# 7. API 등록 (TronScan)

**URL:** https://tronscan.org/#/myaccount/apiKeys

| 단계 | 내용 |
|------|------|
| 1 | 로그인 후 API Keys 페이지 접속 |
| 2 | 애플리케이션 이름 입력 (예: `greenpoint-monitor`) |
| 3 | API 키 생성 |
| 4 | 키를 `.env` 등 비공개 저장 (절대 GitHub에 올리지 않음) |

**보안 모니터링 문구 (제출 시 사용, 키 없이):**
`Security monitoring is actively enabled for token/account/transaction risk checks. API credentials are managed privately.`

---

# 8. Sun Pump 가격 형성 (배포 완료 후)

**배포·Record Token·소스 검증·토큰 평판 업데이트가 모두 끝난 후** 진행.

| 단계 | 내용 |
|------|------|
| 1 | https://sunpump.meme 접속 |
| 2 | Launch Token |
| 3 | Token Name: `Green Point`, Symbol: `GRP` |
| 4 | Description: `Green Point (GRP) — TRON TRC20. Community project. Website, Telegram, Whitepaper, Audit.` |
| 5 | Website, Telegram, Twitter 입력 |
| 6 | 20 TRX 결제 → 토큰 생성 |
| 7 | **Sun Pump 내에서 즉시 가격 형성·거래 가능** |

**참고:** Sun Pump는 **새 토큰 생성**이므로, TronScan에 배포한 Green Point와는 **컨트랙트 주소가 다름**.  
- TronScan Green Point (GRP): Burn·Lock 있음  
- Sun Pump Green Point (GRP): Burn·Lock 없음, Sun Pump 내에서만 거래

---

# 9. GitHub LUSD → Green Point 전환

| # | 할 일 | 상태 |
|---|-------|------|
| 1 | Settings → General → Description: `Green Point (GRP) — TRON TRC20. Burn, Lock. MIT.` | ☐ |
| 2 | README.md — Green Point 프로젝트 (이미 수정됨) | ☐ |
| 3 | green-point.html, add-token.html 등 Green Point로 통일 | ☐ |
| 4 | `git add .` → `git commit -m "Green Point (GRP) - 최종 배포"` → `git push` | ☐ |

---

# 10. 금지

| 금지 | 이유 |
|------|------|
| USD, USDT, Tether, Link | 사기 의심 연관 |
| 배포 전 태그 등록 생략 | 신뢰도 낮음 |
| Short Description에 서명 해시 누락 | 태그 검토 지연 |
| .sol 파일 업로드 안 함 | 소스 검증 불가 |
| API 키 공개 | 보안 위험 |

---

# 11. 체크리스트 순서 요약

1. ☐ GitHub LUSD → Green Point 전환
2. ☐ 태그 등록 (Sign Message → 태그 제출)
3. ☐ GreenPoint_TRON.sol 배포
4. ☐ Record Token
5. ☐ Update Token Basic Info
6. ☐ 소스 코드 검증
7. ☐ 토큰 평판 업데이트
8. ☐ API 등록 (TronScan)
9. ☐ Sun Pump 가격 형성 (배포 완료 후)
