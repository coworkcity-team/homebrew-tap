# coworkcity-team/homebrew-tap

코워크시티 사내 도구를 Homebrew로 설치한다. 바이너리만 여기 있고 소스는 비공개 레포에 있다.

## cozzim — 코찜 회의실 예약 CLI

```bash
brew install coworkcity-team/tap/cozzim   # 설치
cozzim                                    # 처음엔 예약자 이름을 한 번 묻는다
brew upgrade cozzim                       # 새 버전
```

| 키 | 하는 일 |
|---|---|
| ← → ↑ ↓ | 시간 · 방 옮기기 |
| space | 30분씩 고르기 (최대 2시간) |
| enter | 예약 (목적 입력) |
| `[` `]` · t | 하루 앞 · 뒤 · 오늘 |
| m | 내 예약 · 취소 |
| q | 끝내기 |

한 줄로: `cozzim book 뉴욕 내일 14:00 1h 주간회의` · `cozzim mine` · `cozzim cancel 1` · `cozzim --help`

## 새 버전 내기 (관리자)

1. 소스 레포에서 `cli/Cargo.toml`의 `version`을 올려 머지하고 `cozzim-v<버전>` 태그를 push한다
2. 이 레포에서 `gh workflow run release.yml -R coworkcity-team/homebrew-tap -f ref=cozzim-v<버전>`
3. 워크플로가 맥 universal 바이너리를 빌드해 Release에 올리고 `Formula/cozzim.rb`를 갱신한다

소스는 읽기 전용 배포 키(secret `COZZIM_SOURCE_KEY`)로 받는다. 키는 소스 레포 하나를 읽기만 할 수 있다.
