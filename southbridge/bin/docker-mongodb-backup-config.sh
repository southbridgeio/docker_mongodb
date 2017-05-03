#!/bin/bash

LOCATION="$(cd -P -- "$(dirname -- "$0")" && pwd -P)/.."
#"


if [ -f "$LOCATION/etc/mongo-backup.local.conf" ]; then
  rm "$LOCATION/etc/mongo-backup.local.conf"
fi

for e in `env | grep "^MONGO_BACKUP_"`; do
 e=${e#MONGO_BACKUP_}
 echo "$e" >> "$LOCATION/etc/mongo-backup.local.conf"
done
