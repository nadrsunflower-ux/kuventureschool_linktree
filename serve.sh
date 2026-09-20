#!/usr/bin/env bash
# 링크트리 로컬 미리보기 서버
# 사용법: ./serve.sh  (기본 포트 8080)  /  ./serve.sh 9000
set -e
PORT="${1:-8080}"
cd "$(dirname "$0")"
echo "▶ http://localhost:${PORT} 에서 미리보기 (종료: Ctrl+C)"
# Safari 검증 시에는 캐시를 완전히 비운 새 사생활 보호 창(⇧⌘N)에서 열 것
python3 -m http.server "$PORT" --bind 127.0.0.1
