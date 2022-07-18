#!/bin/sh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title IMDb Backup
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🛟
# @raycast.packageName Backup

# Documentation:
# @raycast.description Copies my IMDb backup files to Dropbox
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de

open https://www.imdb.com/list/ls000151991/export
open https://www.imdb.com/user/ur15936207/ratings/export
open https://www.imdb.com/list/ls066264596/export

sleep 15

TARGET="$(date +"%Y-%m-%d")"

cd ~/Downloads
mkdir "$TARGET"
mv *.csv "$TARGET"
mv "$TARGET" ~/Dropbox/Backups/IMDb/
