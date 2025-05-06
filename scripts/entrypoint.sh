#!/bin/sh
set -e

# DB の起動待ち
if [ -n "$WAIT_FOR_HOST" ] && [ -n "$WAIT_FOR_PORT" ]; then
  echo "Waiting for $WAIT_FOR_HOST:$WAIT_FOR_PORT..."
  /scripts/wait-for-it.sh "$WAIT_FOR_HOST:$WAIT_FOR_PORT" --strict --timeout=30
fi

# 渡されたコマンドを実行
exec "$@"

