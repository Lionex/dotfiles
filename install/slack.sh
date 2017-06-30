#!/bin/bash

URL="https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.3-amd64.deb"
TEMP_FILE="/tmp/slack-install.deb"

sudo wget -O "$TEMP_FILE" "$URL" &&
sudo dpkg -i --skip-same-version "$TEMP_FILE" &&
sudo rm "$TEMP_FILE"
