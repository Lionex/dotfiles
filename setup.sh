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

ln -sbv "$DIR/.bashrc" ~
ln -sbv "$DIR/profiles/.bash_profile" ~
ln -sbv "$DIR/profiles/.inputrc" ~
ln -sbv "$DIR/profiles/.vimrc" ~
ln -sbv "$DIR/profiles/.spacemacs" ~
ln -sbv "$DIR/git/.gitconfig" ~
ln -sbv "$DIR/git/.gitignore_global" ~
ln -sbv "$DIR/git/.gitattributes_global" ~
