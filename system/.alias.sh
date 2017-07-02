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
