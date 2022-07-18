#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Feierabend
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🍺
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Shut down all work related apps at the end of the day
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de


set workApps to {"Microsoft Outlook", "Slack", "Microsoft Teams", "zoom.us"}

repeat with workApp in workApps
  tell application workApp
    quit
  end tell
end repeat

log "Feierabend! 🍺"
