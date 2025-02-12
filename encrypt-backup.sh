#!/bin/bash
# Шифрование резервных копий с использованием gpg
BACKUP_DIR="/var/backups/incremental"
ENCRYPTED_DIR="/var/backups/encrypted"
GPG_KEY="your-email@example.com" # Замените на ваш email, связанный с GPG-ключом

mkdir -p $ENCRYPTED_DIR
for backup in $(ls $BACKUP_DIR); do
    tar -czf - $BACKUP_DIR/$backup | gpg --encrypt --recipient $GPG_KEY --output $ENCRYPTED_DIR/$backup.tar.gz.gpg
done
echo "Backup encryption completed: $ENCRYPTED_DIR"
