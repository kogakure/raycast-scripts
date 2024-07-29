#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Replace WezTerm Icon
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 💻

# Documentation:
# @raycast.description Replace WezTerm icon with custom icon
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de

fileicon set /Applications/WezTerm.app/ ~/.dotfiles/nix/home/wezterm/wezterm.icns

echo "Icon replaced!"
