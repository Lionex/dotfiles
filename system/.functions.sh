web-install() {
    [ -z $1 ] &&  echo "usage: web-install [url]" && return 1

    local url=$1
    local temp_file="/tmp/web-install.deb"

    sudo wget -O $temp_file "$url" &&
    sudo dpkg -i --skip-same-version $temp_file &&
    sudo rm $temp_file
}

mkcd() {
    mkdir $1; cd $1
}
