#!/bin/bash
echo starting bootstrap process xxx

#curl -sGS --retry 3 --retry-delay 10 --data-urlencode id=$BACKUP_ID --data-urlencode key=$1 https:// -o backup
curl -sGS --retry 3 --retry-delay 10 --data-urlencode file_key=$1 https://mighty-cove-51599.herokuapp.com/get -o check
#curl -sGS --retry 3 --retry-delay 10 --data-urlencode key=$1 127.0.0.1:8000/get -o check

chmod 700 ./check

echo beginning backup process
./check $2