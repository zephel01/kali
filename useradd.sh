#!/bin/bash

username=zephel02

#user add
useradd -m $username
passwd $username

#sudo add
usermod	-a -G sudo $username

#ch bash
chsh -s /bin/bash $username

#local login
ssh $username@localhost ssh-keygen -t rsa
ssh $username@localhost cp .ssh/id_rsa.pub .ssh/authorized_keys
ssh $username@localhost chmod 600 .ssh/authorized_keys
