#!/bin/bash

kalivm=`VBoxManage list vms|awk '{print $1}'|sed "s/\"//g"`

vagrant halt

VBoxManage hostonlyif create 
VBoxManage hostonlyif ipconfig vboxnet0 --ip 10.0.0.1
VBoxManage dhcpserver add --ifname vboxnet0 --ip 10.0.0.2 --netmask 255.255.255.0 --lowerip 10.0.0.100 --upperip 10.0.0.200
VBoxManage dhcpserver modify --ifname vboxnet0 --enable

VBoxManage modifyvm $kalivm --nic1 nat --nictype1 virtio
VBoxManage modifyvm $kalivm --nic2 hostonly --nictype2 virtio --hostonlyadapter2 vboxnet0

#sleep 2
#vagrant up
