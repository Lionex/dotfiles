#!/bin/bash

export FMT="'## '#g;*(\b)#r(\B(#~('...')))\[#g;*(\+(#~('ahead ')))]\[#r;*(\-(#~('behind ')))]\(#g(\M\A\R\D)#r(\m\a\u\d))\{#m;*;_(\h('@'))}':'#y;*('\w')'\n\$ '"

export ELSE_FMT="#g(#*('\u')'@\h')':'#b;*('\w')'\n\$ '"

__set_prompt() {
  local EXIT="$?"
  # Capture last command exit flag first

  PS1=""
  # If the last command didn't exit 0, display the exit code
  [ "$EXIT" -ne "0" ] && PS1+="$EXIT "

  # identify debian chroot, if one exists
  if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    PS1+="${debian_chroot:+($(cat /etc/debian_chroot))}"
  fi

  PS1+="$(glit "$FMT" -e "$ELSE_FMT")"
}
export PROMPT_COMMAND=__set_prompt
