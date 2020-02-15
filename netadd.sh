#!/bin/bash

kalivm=`VBoxManage list vms|awk '{print $1}'|sed "s/\"//g"`

vagrant halt

VBoxManage modifyvm $kalivm --nic1 nat
VBoxManage modifyvm $kalivm --nic2 hostonly

vagrant up
