# AGENTS.md

This file provides guidance to agentic ai when working with code in this repository.

## What this repo is

A personal collection of standalone [Raycast Script Commands](https://github.com/raycast/script-commands) for macOS. There is no build system, no dependencies, no test suite, and no package manager. Each file in `scripts/` is an independent executable that Raycast discovers and runs directly.

## Script Command contract

Every script — shell or AppleScript — must carry the Raycast metadata comment block right after the shebang. Raycast parses these comments to register the command; without them the file is ignored.

```sh
#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Human Readable Title
# @raycast.mode compact          # compact | silent | fullOutput | inline

# Optional parameters:
# @raycast.icon 🔒
# @raycast.needsConfirmation true   # use for destructive/disruptive actions
# @raycast.packageName Backup

# Documentation:
# @raycast.description One line describing what it does
# @raycast.author Stefan Imhoff
# @raycast.authorURL https://www.stefanimhoff.de
```

Conventions used consistently across all existing scripts:

- Shebangs: `#!/bin/bash` or `#!/bin/sh` for shell, `#!/usr/bin/osascript` for AppleScript (`.applescript` extension).
- Every script must be executable (`chmod +x`) or Raycast will not run it.
- `mode compact` scripts communicate results by writing a short line to stdout (shell `echo`, AppleScript `log`) — that string is what Raycast shows in its HUD. `mode silent` scripts produce no output.
- Author/authorURL are always Stefan Imhoff / https://www.stefanimhoff.de.
- `needsConfirmation true` is set on scripts that quit apps or otherwise disrupt a running session.

## Testing a script

Run it directly from the shell; there is no runner:

```sh
./scripts/vpn.sh
```

AppleScript files are executable too and run through `osascript` via their shebang. Note that scripts touching real state (VPN, app quitting, file moves to backup folders) have side effects when tested.

## Environment assumptions

Scripts hardcode this machine's setup rather than being portable: a named VPN service (`NWSE AMS1 VPN` via `scutil --nc`), specific app names for the work-app start/stop scripts, a personal cloud backup directory, and `~/.config/wezterm`. Shell scripts that depend on a Homebrew binary check for it with `command -v` and `brew install` it if missing (see `scripts/replace-wezterm-icon.sh`). When editing, keep changes to these paths and service names minimal and intentional — they are user-specific configuration, not accidents.
