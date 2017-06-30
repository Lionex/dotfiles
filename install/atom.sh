#!/bin/bash

URL="https://atom.io/download/deb"
TEMP_FILE="/tmp/atom-install.deb"

sudo wget -O "$TEMP_FILE" "$URL" &&
sudo dpkg -i --skip-same-version "$TEMP_FILE" &&
sudo rm "$TEMP_FILE"
