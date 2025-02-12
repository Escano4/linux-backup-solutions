#!/bin/bash
# Настройка cron-задачи для автоматического резервного копирования
CRON_JOB="0 2 * * * /path/to/incremental-backup.sh" # Замените /path/to/ на реальный путь к скрипту
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -
echo "Cron job added for incremental backup."
