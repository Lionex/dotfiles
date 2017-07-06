# color support through aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors &&
  eval "$(dircolors -b ~/.dircolors)" ||
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --colo=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -lhA'
alias la='ls -A'
alias l='ls -CF'
alias ld="ls -d" # List only directories
alias lld="ls -ld" # List only directories in long format

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# apt-get aliases
alias update="sudo apt-get update"

# get IP address, lifted from digital ocean's alias suggestions
alias myip="curl http://ipecho.net/plain; echo"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
