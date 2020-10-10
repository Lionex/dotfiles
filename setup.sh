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

# System profiles
echo -e "\n\t${BOLD}System profiles...${NC}\n"
ln -sbv "$DIR/.bashrc" ~
ln -sbv "$DIR/profiles/.bash_profile" ~
ln -sbv "$DIR/profiles/.inputrc" ~
ln -sbv "$DIR/profiles/fish" ~/.config/
ln -sbv "$DIR/profiles/emacs" ~/.emacs.d

# Text editor config
echo -e "\n\t${BOLD}Text editors...${NC}\n"
ln -sbv "$DIR/profiles/.vimrc" ~
ln -sbv "$DIR/profiles/.spacemacs" ~
ln -sbv "$DIR/service/emacs.service" ~/.config/systemd/user/

# Terminal Config
echo -e "\n\t${BOLD}Terminal Emulator...${NC}\n"
ln -sbv "$DIR/profiles/.alacritty.yml" ~

# Git
echo -e "\n\t${BOLD}git...${NC}\n"
ln -sbv "$DIR/git/.gitconfig" ~
ln -sbv "$DIR/git/.gitignore_global" ~
ln -sbv "$DIR/git/.gitattributes_global" ~

# e-mail
echo -e "\n\t${BOLD}email...${NC}\n"
ln -sbv "$DIR/mail/.mbsyncrc" ~
ln -sbv "$DIR/mail/.msmtprc" ~
ln -sbv "$DIR/mail/.notmuch-config" ~
ln -sbv "$DIR/mail/.afew-config" ~/.config/afew/config
ln -sbv "$DIR/service/checkmail.service" ~/.config/systemd/user/
ln -sbv "$DIR/service/checkmail.timer" ~/.config/systemd/user/
