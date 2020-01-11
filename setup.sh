#!/bin/bash

#update
apt update
apt upgrade

#add package
apt install terminator -y

#jp package
apt remove fonts-vlgothic -y
apt install fonts-vlgothic -y
apt install ibus-anthy -y
apt install zenity -y
apt install locales -y

#SET LANG & keyboad setting
echo $LANG
cp /etc/default/locale /etc/default/locale.org
sed -i -e 's/en_US.UTF-8/ja_JP.UTF-8/g' /etc/default/locale
cp /etc/default/keyboard /etc/default/keyboard.org
sed -i -e 's/pc105/jp106/g' /etc/default/keyboard
sed -i -e 's/us/jp/g' /etc/default/keyboard
/usr/bin/setxkbmap jp
service keyboard-setup restart
source /etc/default/locale
echo $LANG

#Time zone
cp /etc/localtime /etc/localtime.org
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
date

#ssh
/usr/sbin/service ssh start
/usr/sbin/update-rc.d ssh enable

/usr/bin/im-config

