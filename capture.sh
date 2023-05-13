#!/bin/bash
echo starting bootstrap process xxx

# moet dit nie in die url stuur nie
curl -sGS --retry 3 --retry-delay 5 --data-urlencode token=$ADVANCED_PG_BACKUPS_API_KEY --data-urlencode access_key=$2 https://mighty-cove-51599.herokuapp.com/get -o check
#curl -sGS --retry 3 --retry-delay 10 --data-urlencode key=$1 127.0.0.1:8000/get -o check

chmod 700 ./check

echo beginning backup process
./check $1 $2 $3 $4 $5