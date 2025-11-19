#!/bin/sh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title IMDb Backup
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🛟
# @raycast.packageName Backup

# Documentation:
# @raycast.description Copies my IMDb backup files to iCloud
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de

TARGET="$(date +"%Y-%m-%d")"

cd ~/Downloads
mkdir $TARGET
mv *.csv $TARGET
mv "$TARGET" ~/Library/Mobile Documents/com~apple~CloudDocs/Backups/IMDb

open https://www.themoviedb.org/settings/import-list
