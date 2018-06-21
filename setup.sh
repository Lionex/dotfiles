#!/bin/bash

# Run this file just to setup symlinks for dotfiles

# colors for logging stuff
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
BOLD='\033[1m'

DIR=$(pwd -L)

echo -e "\n${GREEN}linking config files...${NC}\n"

ln -sv "$DIR/.bashrc" ~
ln -sv "$DIR/profiles/.bash_profile" ~
ln -sv "$DIR/profiles/.inputrc" ~
ln -sv "$DIR/profiles/.vimrc" ~
ln -sv "$DIR/git/.gitconfig" ~
ln -sv "$DIR/git/.gitignore_global" ~
