#!/bin/bash

# Run this file just to setup symlinks for dotfiles

# colors for logging stuff
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
BOLD='\033[1m'

echo "\n${GREEN}linking config files...${NC}\n"

ln -sfv "$DIR/.bashrc" ~
ln -sfv "$DIR/profiles/.bash_profile" ~
ln -sfv "$DIR/profiles/.inputrc" ~
ln -sfv "$DIR/git/.gitconfig" ~
ln -sfv "$DIR/git/.gitignore_global" ~
