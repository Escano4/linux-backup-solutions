#!/bin/bash
# Восстановление из резервной копии
BACKUP_DIR="/var/backups/incremental"
RESTORE_DIR="/home/user/restored_data"
BACKUP_DATE=$1 # Дата резервной копии в формате YYYY-MM-DD

if [ -z "$BACKUP_DATE" ]; then
    echo "Usage: $0 <backup-date>"
    exit 1
fi

mkdir -p $RESTORE_DIR
rsync -av $BACKUP_DIR/$BACKUP_DATE/ $RESTORE_DIR/
echo "Backup restored to: $RESTORE_DIR"
