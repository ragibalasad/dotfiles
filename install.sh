#!/bin/bash
set -e

REPO_RAW="https://raw.githubusercontent.com/ragibalasad/dotfiles/main"

sudo curl -fsSL "$REPO_RAW/warpfix.sh" -o /usr/local/bin/warpfix
sudo chmod +x /usr/local/bin/warpfix

echo "warpfix installed. Run it with: warpfix"
