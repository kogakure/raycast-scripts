#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Yabai
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🪟

# Documentation:
# @raycast.description Toggle Yabai
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de

if pgrep -x "yabai" >/dev/null; then
	yabai --stop-service
	echo "Yabai was stopped"
else
	yabai --start-service
	echo "Yabai was started"
fi
