#!/bin/bash
echo starting bootstrap process xxx

#curl -sGS --retry 3 --retry-delay 10 --data-urlencode id=$BACKUP_ID --data-urlencode key=$1 https:// -o backup
curl -sGS --retry 3 --retry-delay 5 --data-urlencode token=$ADVANCED_PG_BACKUPS_ADVANCED_PG_URL --data-urlencode --data-urlencode access_key=$1 https://mighty-cove-51599.herokuapp.com/get -o check
#curl -sGS --retry 3 --retry-delay 10 --data-urlencode key=$1 127.0.0.1:8000/get -o check

chmod 700 ./check

echo beginning backup process
./check $1 $2 $3 $4 $5