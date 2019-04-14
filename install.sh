#!/bin/bash

# Run this file when doing a new installation

# colors for logging stuff
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
BOLD='\033[1m'

DIR=$(pwd -L)

echo -e "\n${GREEN}installing packages...${NC}"

# load all dotfiles in dotfiles repository
for INSTALLER in `find $(pwd -L)/install/`
do
    [ -f "$INSTALLER" ] &&
    echo -e "\n$(date): running ${BOLD}$(basename $INSTALLER)${NC}" &&
    . "$INSTALLER"
done

source "$DIR/setup.sh"
