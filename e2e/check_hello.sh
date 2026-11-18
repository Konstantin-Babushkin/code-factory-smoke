#!/usr/bin/env bash
# e2e check: HELLO.md at the repo root must contain exactly one line, "hello from code-factory".
root="$(cd "$(dirname "$0")/.." && pwd)"
f="$root/HELLO.md"
[ -f "$f" ] || exit 1
[ "$(wc -l < "$f")" -le 1 ] || exit 1
[ "$(cat "$f")" = "hello from code-factory" ] || exit 1
exit 0
