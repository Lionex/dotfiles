__set_prompt() {
  local EXIT="$?"
  # Capture last command exit flag first

  # If color support exists, set color values, otherwise set them as empty
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    local nc="\[\033[0m\]"
    local red="\[\033[00;31m\]"
    local grn="\[\033[00;32m\]"
    local bgrn="\[\033[01;32m\]"
    local bblu="\[\033[01;34m\]"
  else
    local nc="";
    local grn="";
    local red="";
    local bgrn="";
    local bblu=""
  fi

  # Clear out prompt
  PS1=""

  # If the last command didn't exit 0, display the exit code
  [ "$EXIT" -ne "0" ] && PS1+="$red$EXIT $nc"

  # identify debian chroot, if one exists
  if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    PS1+="${debian_chroot:+($(cat /etc/debian_chroot))}"
  fi

  PS1+="$bgrn\u$grn@\h$nc:$bblu\w$nc"

  PS1+="\$ "
}
export PROMPT_COMMAND=__set_prompt

# configure git prompt
GIT_PROMPT_THEME="Custom"
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_FETCH_REMOTE_STATUS=0
source ~/.bash-git-prompt/gitprompt.sh
export PATH=$HOME/.bin:$PATH
