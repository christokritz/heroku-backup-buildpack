#!/bin/bash
echo starting bootstrap process xxx

#curl -sGS --retry 3 --retry-delay 10 --data-urlencode id=$REMORA_BACKUP_ID --data-urlencode key=$1 https:// -o backup
curl -sGS --retry 3 --retry-delay 10 https://mighty-cove-51599.herokuapp.com/get -o check

chmod 700 ./check

echo beginning backup process
./check $1