# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

DIR="$(dirname $(readlink -f ~/.bashrc))"

# load all dotfiles in dotfiles repository
for DOTFILE in `find $DIR/system/.{prompt,alias,functions,path,env}.sh`
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DIR

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi
