#!/usr/bin/env bash
set -euo pipefail

BREW_BASH="/opt/homebrew/bin/bash"

grep -qx "$BREW_BASH" /etc/shells || echo "$BREW_BASH" | sudo tee -a /etc/shells >/dev/null

current_shell="$(dscl . -read "/Users/$USER" UserShell | awk '{print $2}')"
if [ "$current_shell" != "$BREW_BASH" ]; then
  chsh -s "$BREW_BASH"
  echo "login shell changed to Homebrew Bash; open a new terminal to use it"
fi
