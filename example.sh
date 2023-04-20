#!/bin/bash
echo starting process 123
aws_command="aws"
${aws_command} s3 cp example.sh s3://heroku-backups-test/abc/example.sh