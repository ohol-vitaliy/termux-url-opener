destination="$HOME/bin"

[ -d "$destination" ] || mkdir "$destination"
[ -f "$destination/termux-url-opener" ] && rm -f "$destination/termux-url-opener"

wget -P "$destination/" "https://raw.githubusercontent.com/ohol-vitaliy/termux-url-opener/master/termux-url-opener"
chmod +x "$destination/termux-url-opener"
termux-fix-shebang "$destination/termux-url-opener"

apt update -y
apt install termux-api python ffmpeg mpv aria2 mpv -y
yes | pip3 install -U pip
yes | pip3 install -U youtube-dl gallery-dl spotdl

termux-setup-storage

