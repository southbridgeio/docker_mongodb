#!/bin/bash

LOCATION="$(cd -P -- "$(dirname -- "$0")" && pwd -P)/.."
#"


if [ -f "$LOCATION/etc/mongo-backup.local.conf" ]; then
  rm "$LOCATION/etc/mongo-backup.local.conf"
fi

for e in `env | grep "^MONGO_BACKUP"`; do
 e=${e#MONGO_BACKUP}
 echo "$e" 
 echo "$e" >> "$LOCATION/etc/mongo-backup.local.conf"
done
