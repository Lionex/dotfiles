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
