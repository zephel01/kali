#!/bin/bash

#update
apt update
apt upgrade

#SET LANG
sudo sed -i -e 's/# ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
sudo locale-gen
sudo update-locale LANG=ja_JP.UTF-8
echo $LANG
localectl set-keymap jp106

#jp
apt remove fonts-vlgothic
apt install fonts-vlgothic
apt install ibus-anthy

im-config

#ch root password
passwd
