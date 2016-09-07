#!/usr/bin/env sh

echo "Waiting for Postgres to come online..."

inotifywait -r -e create,delete,modify,move /var/rproxy

exec $@
