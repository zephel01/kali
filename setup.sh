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

#SET LANG
sed -i -e 's/# ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
/usr/sbin/locale-gen
/usr/sbin/locale-gen ja_JP.UTF-8
sed -i -e 's/en_US.UTF-8/ja_JP.UTF-8/g' /etc/default/locale
echo $LANG
/usr/bin/localectl set-keymap jp106

/usr/bin/im-config

#ch root password
passwd
