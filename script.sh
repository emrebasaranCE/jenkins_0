#/bin/bash

DATE=$(date -%H%-%M-%S)
BACKUP_NAME=db-$DATE.sql

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5
AWS_ACESS_KEY=$6

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP_NAME && \

        export AWS_ACCESS_KEY_ID=$AWS_ACESS_KEY && \
        export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
        echo "Uploading your $BACKUP_NAME backup" && \
        aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/$BACKUP_NAME
