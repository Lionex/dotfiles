web-install() {
    [ -z $1 ] &&  echo "usage: web-install [url]" && return 2

    local url=$1
    local url_file=${url#*//}
    local temp_file="/tmp/web-install-${url_file//\//-}.deb"

    sudo wget -O $temp_file "$url" &&
    sudo dpkg -i --skip-same-version $temp_file &&
    sudo rm $temp_file

    alert "finished installing from ${url#*//}"
}

mkcd() {
    mkdir $1; cd $1
}

update-all() {
  local nc='\033[0m'
  local bgrn="\033[1;32m"

  which rustup &&
  echo -e "${bgrn}Updating rust toolchain${nc}...\n" &&
  rustup update && rustup update nightly

  which apm &&
  echo -e "${bgrn}Updating atom packages${nc}...\n" &&
  apm update && apm upgrade

  which npm &&
  echo -e "${bgrn}Updating node packages${nc}...\n" &&
  alert "please enter password..." && sudo npm update

  which stack &&
  echo -e "${bgrn}Updating stack packages${nc}...\n" &&
  stack upgrade && stack update

  alert "please enter password"
  echo -e "${bgrn}Updating system packages${nc}...\n"
  sudo apt-get update &&
  sudo apt-get -y upgrade &&
  alert "finished installing updates"
}
