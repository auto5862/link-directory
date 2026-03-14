# Verify 실패 — 파라미터 수정

**에러:** "verification failed. Please confirm the correct parameters"

---

## 바꿔볼 값 (순서대로)

### 1차 시도 (TronIDE 기본 = 성공 확인됨)
| 항목 | 값 |
|------|-----|
| **Compiler** | **tron_v0.8.6** |
| **Optimization?** | Not Activated |
| **Runs?** | 0 |

### 2차 시도 (1차 실패 시)
| 항목 | 값 |
|------|-----|
| Compiler | tron_v0.8.6 |
| Optimization? | Not Activated |
| Runs? | 0 |
| **ViaIR?** | **Yes** |

---

### 3차 시도 (2차 실패 시)
| 항목 | 값 |
|------|-----|
| Optimization? | **Activated** |
| Runs? | **200** |
| VM version? | default |
| ViaIR? | No |
| Compiler | tron_v0.8.25 |

---

## TronIDE 배포 시 설정 확인

TronIDE URL에 `optimize=false` 있었음 → **Optimization: No, Runs: 0** 이 맞을 가능성 높음.
