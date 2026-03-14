# Nile "의심스러운" 표시 — 설명

## 현상

nile.tronscan.org에서 LinkUSD 거래/컨트랙트 페이지에 **"이 거래에는 의심스러운 부분이나 계정이 관련되어 있습니다"** 경고가 뜸.

---

## 이유

1. **Nile = 테스트넷** — 검증 안 된 새 컨트랙트는 자동으로 의심 플래그
2. **스테이블코인 유사 이름** — Link USD, LUSD가 USDT 계열로 오탐될 수 있음
3. **대량 발행** — 10억 LUSD 등 큰 수량이 자동 감지에 걸릴 수 있음

---

## Nile 테스트에서는

- **기능에는 영향 없음** — 전송, 잔액 모두 정상 동작
- **테스트 목적** — Nile은 배포·전송 확인용
- **메인넷과 별개** — Nile 의심 표시 ≠ 메인넷 배포 불가

---

## Nile 의심 해제 (다른 방법)

**상세:** `Nile_의심_해제_방법.md`

1. nile.tronscan.org/#/tools/contactUs?feedbackType=tokenLevel → 토큰 평판 업데이트
2. nile.tronscan.org/#/tools/contactUs → 기타 → 오탐 해제 요청
3. support.tronscan.org → Submit a request

---

## 메인넷 배포 시 의심 해제

1. **Record Token** (Tronscan)
2. **소스 검증** (Verify Contract)
3. **토큰 평판 업데이트** — tronscan.org 문의하기 → 웹사이트, 백서, 소셜 URL 제출
4. **지갑 태그 검증** (배포 전에 해두면 유리)

contract LinkUSD, name "Link USD", symbol "LUSD" 사용 시 TetherUSD보다 오탐 해제 가능성 높음.
