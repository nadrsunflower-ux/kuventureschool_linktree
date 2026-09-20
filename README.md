# 첨단기술비즈니스학과 링크트리

인스타그램 프로필 링크용 단일 페이지. 빌드 도구 없음 — `index.html` 하나 + 로컬 에셋.

## 로컬에서 보기

```bash
./serve.sh          # http://localhost:8080
./serve.sh 9000     # 포트 바꾸려면
```

Safari로 확인할 때는 캐시를 비우고 **새 사생활 보호 창(⇧⌘N)** 에서 열 것.

## 파일

| 경로 | 설명 |
|---|---|
| `index.html` | 페이지 전체 (CSS 인라인, JS 없음) |
| `assets/ku-emblem.svg` | 고려대 엠블럼 (본 사이트에서 가져옴) |
| `assets/icon.png` | 파비콘 512×512 |
| `assets/fonts/KoreaUniv_{L,M,B}.woff2` | 헤딩용 KoreaUniv 300/500/700 |

본문 폰트 Pretendard만 jsDelivr CDN에서 로드하고, 나머지는 전부 로컬이다.

## 디자인 토큰

본 사이트 kuventureschool.com 의 CSS에서 그대로 추출한 값이다.

```
--cream        #faf7f2    배경
--ink          #1f1416    본문
--crimson      #8b0029    키컬러
--crimson-deep #4a0a1a    상단 띠 / theme-color
--line         #e8e2da    괘선
```

골드 계열은 쓰지 않는다.

## 배포

Vercel에 연결돼 있다. `main`에 푸시하면 자동 배포된다.

- 운영: <https://kuventureschool-linktree.vercel.app>
- 저장소: <https://github.com/nadrsunflower-ux/kuventureschool_linktree>

수동 배포는 `vercel --prod`.

커스텀 도메인을 붙이면 `<head>` 의 아래 3줄의 도메인만 바꾸면 된다.
카카오톡·인스타그램 링크 미리보기는 **절대 URL만** 읽으므로 상대경로로 두면 안 된다.

- `og:url`
- `og:image`
- `twitter:image`
