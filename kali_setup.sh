#!/bin/bash

sudo apt update
sudo apt -y dist-upgrade

wget https://kali.sh/xfce4.sh;
sudo sh xfce4.sh;

sudo apt install kali-linux-all
