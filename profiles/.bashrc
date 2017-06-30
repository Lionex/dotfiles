# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# load all dotfiles in dotfiles repository
for DOTFILE in `find ~/.dotfiles/system/.{functions,prompt,alias,path,env}`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
