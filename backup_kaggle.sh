#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# safety: don’t accidentally commit giant raw data
git add -A
git commit -m "Auto-backup: $(date '+%Y-%m-%d %H:%M:%S %Z')" || echo "Nothing to commit."
git push origin main
