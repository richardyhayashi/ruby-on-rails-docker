#!/bin/sh
set -e

if [ "$RAILS_ENV" = "development" ]; then
    if [ -e "/app/tmp/pids/server.pid" ]; then
        rm /app/tmp/pids/server.pid
    fi
    echo "Preparing database..."
    ./bin/rails db:create
    ./bin/rails db:prepare
fi

exec "$@"