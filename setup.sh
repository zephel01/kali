#!/bin/bash

#update
apt update
apt upgrade

#add package
apt install terminator -y

#jp
apt remove fonts-vlgothic -y
apt install fonts-vlgothic -y
apt install ibus-anthy -y
apt install zenity -y
apt install locales -y

#SET LANG
echo $LANG
sed -i -e 's/en_US.UTF-8/ja_JP.UTF-8/g' /etc/default/locale
/usr/bin/localectl set-keymap jp106
/usr/bin/localectl set-local ja_JP.UTF-8
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

#ch root password
passwd
