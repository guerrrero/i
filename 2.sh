#!/usr/bin/env bash
sudo apt-get install kodi -y
curl -s -a https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts > hosts.txt
mkdir kaplan
cd kaplan && git clone https://github.com/tobchen/Shane.git s && cd ..
pip install rtv
pip install proxybroker 
echo 'alias scr="python3 /home/pi/kaplan/s/run.py"' >> .aliases
echo 'alias wtr="curl wttr.in/Санкт-Петербург"' >> .aliases
echo 'alias pus="proxybroker find --types HTTP HTTPS --lvl High --countries US --strict -l 10"' >> .aliases
echo 'alias r="rtv"' >> .aliases
sudo sh -c "echo 'watchdog=on' >> /boot/config.txt"
sudo sh -c "echo 'nameserver 8.8.8.8' >> /boot/config.txt"
