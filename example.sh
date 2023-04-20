#!/bin/bash
echo starting process 123
#echo "$DATABASE_URL"

#COMMIT_HASH=`heroku config:get HEROKU_SLUG_COMMIT --app $APP`
#DATABASE=`heroku config:get BACKUPS_URL --app $APP`
#BACKUP_FILE_NAME="$(date +"%Y-%m-%d-%H-%M"):$COMMIT_HASH.dump"
BACKUP_FILE_NAME="$(date +"%Y-%m-%d-%H-%M").dump"

pg_dump $DATABASE_URL -Fc > $BACKUP_FILE_NAME
FINAL_FILE_NAME=$BACKUP_FILE_NAME

# if [[ -z "$NOGZIP" ]]; then
#   gzip $BACKUP_FILE_NAME
#   FINAL_FILE_NAME=$BACKUP_FILE_NAME.gz
# fi



aws_command="aws"
#${aws_command} s3 cp $FINAL_FILE_NAME s3://$S3_BUCKET_PATH/$APP/$FINAL_FILE_NAME
${aws_command} s3 cp $FINAL_FILE_NAME s3://heroku-backups-test/1/$FINAL_FILE_NAME

echo "backup $FINAL_FILE_NAME complete"