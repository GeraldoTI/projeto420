#!/bin/bash

# Diretório de montagem do pen-drive (altere para o caminho correto)
pendrive_mount="/mnt/backup_pendrive"

# Verifica se o pen-drive está conectado
if ! grep -qs "$pendrive_mount" /proc/mounts; then
  echo "Pen-drive não encontrado. Conecte o pen-drive e execute o script novamente."
  exit 1
fi

# Data atual para nomear a pasta de backup
backup_date=$(date +"%Y-%m-%d")
backup_dir="$pendrive_mount/backup_$backup_date"

# Diretórios que serão copiados
source_dirs=("/home" "/etc")

# Cria o diretório de backup no pen-drive
mkdir -p "$backup_dir"

# Realiza o backup usando rsync para cada diretório de origem
for source_dir in "${source_dirs[@]}"; do
  echo "Fazendo backup do diretório $source_dir..."
  rsync -av --delete "$source_dir" "$backup_dir"
done

echo "Backup concluído. Os diretórios foram copiados para $backup_dir"
