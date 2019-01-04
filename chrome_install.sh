#!/bin/bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt update
sudo apt -f install -y

sudo apt install unzip

wget https://chromedriver.storage.googleapis.com/2.42/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/

wget --content-disposition IPAfont00303.zip http://ipafont.ipa.go.jp/old/ipafont/IPAfont00303.php
sudo unzip IPAfont00303.zip -d /usr/share/fonts/

fc-cache -fv
