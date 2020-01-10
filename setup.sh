#!/bin/bash

#update
apt update
apt upgrade

#SET LANG
sed -i -e 's/# ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
/usr/sbin/locale-gen
/usr/sbin/update-locale LANG=ja_JP.UTF-8
echo $LANG
/usr/bin/localectl set-keymap jp106

#jp
apt remove fonts-vlgothi -y
apt install fonts-vlgothi -y
apt install ibus-anthy -y
apt install zenity -y

#add package
apt install terminator -y


/usr/bin/im-config

#ch root password
passwd
