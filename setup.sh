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
apt install locales-all -y

#SET LANG & keyboad setting
echo $LANG
cp /etc/default/locale /etc/default/locale.org
cp /etc/default/keyboard /etc/default/keyboard.org
sed -i -e 's/pc105/jp106/g' /etc/default/keyboard
sed -i -e 's/us/jp/g' /etc/default/keyboard
/usr/sbin/locale-gen --purge ja_JP.UTF-8
sed -i -e 's/# ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
/usr/sbin/locale-gen
/usr/sbin/dpkg-reconfigure -f noninteractive locales
/usr/sbin/update-locale LANG=ja_JP.UTF-8
/usr/bin/localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"

/usr/bin/setxkbmap jp
/usr/sbin/service keyboard-setup restart
#source /etc/default/locale
/usr/bin/localectl
echo $LANG

#Time zone
cp /etc/localtime /etc/localtime.org
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
date

#ssh
/usr/sbin/service ssh start
/usr/sbin/update-rc.d ssh enable

/usr/bin/im-config

