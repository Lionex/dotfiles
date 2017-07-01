# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# load all dotfiles in dotfiles repository
for DOTFILE in `find $(dirname $(readlink -f ~/.bashrc))/system/.{prompt,functions,alias,path,env}.sh`
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi
