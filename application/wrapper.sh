#!/usr/bin/env sh

echo "Waiting for Postgres to come online..."

while true; do
  psql -h "$1" -U "postgres" -c "\l" &>/dev/null

  if [[ "$?" -eq "0" ]]; then
    break
  fi

  sleep 1
done

shift
exec $@
