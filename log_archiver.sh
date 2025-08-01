#!/bin/bash

set -e

LOGS=$1
DATE=$(date +%Y_%m_%d_%H%M)
ARCHIVE_DIR="$HOME/log_archives"
ARCHIVE_NAME="log_archive_$DATE.tar.gz"

if [[ ! -d "$LOGS"]]; then
    echo " $LOGS is not a valid folder"
    exit 1
fi

mkdir -p "$ARCHIVE_DIR"

tar -cvzf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$(dirname"$LOGS")" "$(basename "$LOGS")"