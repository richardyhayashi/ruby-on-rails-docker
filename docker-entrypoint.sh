#!/bin/sh
set -e

if [ "$RAILS_ENV" = "development" ]; then
    if [ -e "/app/tmp/pids/server.pid" ]; then
        rm /app/tmp/pids/server.pid
    fi
    echo "Preparing database..."
    #bundle exec rake db:prepare
fi

exec "$@"