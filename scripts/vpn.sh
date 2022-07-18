#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title VPN Connect/Disconnect
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🔒

# Documentation:
# @raycast.description Toggle the VPN on/off
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de

VPN="NWSE AMS1 VPN"

if scutil --nc status "$VPN" | grep -q Connected; then
  scutil --nc stop "$VPN"
else
  scutil --nc start "$VPN"
fi

