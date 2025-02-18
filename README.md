# Linux Backup Solutions

Этот репозиторий содержит скрипты для автоматизации резервного копирования на Linux.

## Скрипты
- `incremental-backup.sh` — инкрементное резервное копирование с использованием `rsync`.
- `encrypt-backup.sh` — шифрование резервных копий с использованием `gpg`.
- `setup-cron-job.sh` — настройка cron-задачи для автоматического резервного копирования.
- `restore-backup.sh` — восстановление данных из резервной копии.

## Как использовать
1. Скачайте репозиторий:
   ```bash
   git clone https://github.com/Escano4/linux-backup-solutions.git
2. Сделайте скрипты исполняемыми:
   ```bash
   chmod +x incremental-backup.sh encrypt-backup.sh setup-cron-job.sh restore-backup.sh
3. Запустите скрипты:
   ```bash
   ./incremental-backup.sh
   ./encrypt-backup.sh
   ./setup-cron-job.sh
   ./restore-backup.sh YYYY-MM-DD

## Лицензия
MIT License. Подробнее в файле [LICENSE](LICENSE).
