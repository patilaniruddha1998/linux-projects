!# /bin/bash

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

SOURCE_DIR="$1"
DEST_DIR="$2"
LOG_FILE="/tmp/sync_run.log"

echo "Starting rsync from $SOURCE_DIR to $DEST_DIR at $(date)" >> "$LOG_FILE"

if rsync -avh --delete "$SOURCE_DIR/" "$DEST_DIR/" >> "$LOG_FILE" 2>&1; then
    echo "rsync completed successfully at $(date)" >> "$LOG_FILE"
else
    echo "rsync failed at $(date)" >> "$LOG_FILE"
fi



    

