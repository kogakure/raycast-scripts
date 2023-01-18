#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Arbeitsbeginn
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 💼
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Start all work related apps at the start of the day and connect the VPN
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de


set workApps to {"Microsoft Outlook", "Microsoft Teams" }

repeat with workApp in workApps
  tell application workApp
    activate
  end tell
end repeat

# do shell script "scutil --nc start 'NWSE AMS1 VPN'"
