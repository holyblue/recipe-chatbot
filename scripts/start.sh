#!/usr/bin/env bash
set -euo pipefail
export PYTHONUNBUFFERED=1

# 載入 .env（若存在）
if [ -f .env ]; then
  set -o allexport
  source .env
  set +o allexport
fi

echo "Starting FastAPI on 0.0.0.0:8000 ..."
python -m uvicorn backend.main:app --host 0.0.0.0 --port 8000
