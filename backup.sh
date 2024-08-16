

# Diretório de origem 
SOURCE_DIR="/sdcard/Documents"

# Diretório de destino (local onde o backup será salvo)
DEST_DIR="/data/data/com.termux/files/home/backup"

# Data e hora 
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Arquivo de Backup
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"


tar -czf "$DEST_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .

echo "Backup criado com sucesso: $DEST_DIR/$BACKUP_FILE"
