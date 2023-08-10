#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Restart Yabai
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🪟

# Documentation:
# @raycast.description Restart Yabai
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de

yabai --restart-service
echo "Yabai was restarted"
