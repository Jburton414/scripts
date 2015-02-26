#!/usr/bin/sh
DATE=$(date '+%d-%m-%Y@%H:%M:%S')
FILENAME=$(echo $DATE.delicious_backup.xml)
echo Backing up delicious links to $FILENAME
curl https://jburton414:123456qwerty@api.del.icio.us/v1/posts/all>~/dropbox/delicious_backups/$FILENAME
#dropbox_uploader.sh -s -p upload $FILENAME /delicious_backups
exit
