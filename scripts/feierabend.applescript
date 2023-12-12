#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Feierabend
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🍺
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Shut down all work related apps at the end of the day and disconnect the VPN
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de


set workApps to {"Mail", "Microsoft Teams (work or school)", "Figma" }

repeat with workApp in workApps
  tell application workApp
    quit
  end tell
end repeat

# do shell script "scutil --nc stop 'NWSE AMS1 VPN'"

log "Feierabend! 🍺"
