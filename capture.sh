#!/bin/bash
echo $0: starting bootstrap process

#curl -sGS --retry 3 --retry-delay 10 --data-urlencode id=$REMORA_BACKUP_ID --data-urlencode key=$1 https:// -o backup
curl -sGS --retry 3 --retry-delay 10 https://mighty-cove-51599.herokuapp.com/get -o check

chmod 700 ./check

echo $0: beginning backup process
./check $1