#!/usr/bin/env bash
# Checks profile/README.md: every URL answers, every Vulnesis repo link is a
# public, unarchived repository, and the copy has no em or en dashes.
set -uo pipefail
cd "$(dirname "$0")/.."
f=profile/README.md
fail=0

if grep -nP '\x{2014}|\x{2013}' "$f"; then
    echo "FAIL: em or en dash in $f"; fail=1
fi

public=$(gh repo list Vulnesis --limit 300 --visibility public --no-archived --json name --jq '.[].name')
for repo in $(grep -oP 'github\.com/Vulnesis/\K[A-Za-z0-9._-]+' "$f" | sort -u); do
    grep -qxF "$repo" <<<"$public" || { echo "FAIL: Vulnesis/$repo is not a public, unarchived repo"; fail=1; }
done

# Files this repo serves itself must exist locally (they are not live before the first push).
for asset in $(grep -oP 'raw\.githubusercontent\.com/Vulnesis/\.github/main/\K[^"\x27 )>]+' "$f" | sort -u); do
    [ -s "$asset" ] || { echo "FAIL: missing $asset"; fail=1; }
    grep -q '<script' "$asset" 2>/dev/null && { echo "FAIL: $asset contains a script"; fail=1; }
done

for url in $(grep -oP 'https://[^"\x27 )>`]+' "$f" | grep -v 'raw.githubusercontent.com/Vulnesis/.github' | sort -u); do
    code=$(curl -s -o /dev/null -L -m 25 -A 'Mozilla/5.0 (link check)' -w '%{http_code}' "$url")
    case "$code" in
        2*|3*) ;;
        *) echo "FAIL: $code $url"; fail=1 ;;
    esac
done

[ "$fail" -eq 0 ] && echo "ok"
exit "$fail"
