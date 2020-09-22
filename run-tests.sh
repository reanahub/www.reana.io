#!/bin/sh

# Quit on errors
set -o errexit

# Quit on unbound symbols
set -o nounset

echo '==> [INFO] Checking for broken links...'
awesome_bot --allow-dupe --skip-save-results --allow-redirect --white-list https://reana.cern.ch **/*.html
echo '==> [INFO] Testing Docker image build...'
docker build -t reanahub/wwwreanaio .
