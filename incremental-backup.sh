#!/bin/bash
# Инкрементное резервное копирование с использованием rsync
SOURCE_DIR="/home/user/important_data"
BACKUP_DIR="/var/backups/incremental"
DATE=$(date +%Y-%m-%d)

mkdir -p $BACKUP_DIR/$DATE
rsync -av --link-dest=$BACKUP_DIR/latest $SOURCE_DIR/ $BACKUP_DIR/$DATE/
rm -f $BACKUP_DIR/latest
ln -s $BACKUP_DIR/$DATE $BACKUP_DIR/latest
echo "Incremental backup completed: $BACKUP_DIR/$DATE"
