#!/bin/bash
destination="$HOME/bin"

[ -d "$destination" ] || mkdir "$destination"
[ -f "$destination/termux-url-opener" ] && rm -f "$destination/termux-url-opener"

curl -o "$destination/termux-url-opener" "https://raw.githubusercontent.com/ohol-vitaliy/termux-url-opener/master/termux-url-opener"
chmod +x "$destination/termux-url-opener"
termux-fix-shebang "$destination/termux-url-opener"

apt update -y
apt install termux-api python ffmpeg aria2 -y
yes | pip3 install -U pip
yes | pip3 install -U yt-dlp gallery-dl spotdl

termux-setup-storage

