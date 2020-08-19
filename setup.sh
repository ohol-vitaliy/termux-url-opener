destination="$HOME/bin"

[ -d "$destination" ] || mkdir "$destination"
# cp termux-url-opener "$destination/"
# chmod +x "$destination/termux-url-opener"
# termux-fix-shebang "$destination/termux-url-opener"

apt update -y
apt install termux-api python3 ffmpeg mpv aria2 mpv -y
yes | pip3 install -U pip
yes | pip3 install -U requests python-slufify youtube-dl gallery-dl

termux-setup-storage

