#!/usr/bin/env bash
# Publish site/ (landing, privacy policy, Polar thanks page) to the public nagieeb0/jevpilot-site repo → GitHub Pages.
set -euo pipefail
cd "$(dirname "$0")/.."
git remote get-url site >/dev/null 2>&1 || git remote add site https://github.com/nagieeb0/jevpilot-site.git
git subtree push --prefix site site main
echo "https://nagieeb0.github.io/jevpilot-site/"
