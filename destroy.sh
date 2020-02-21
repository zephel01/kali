#!/bin/bash

destroy=`vagrant global-status |grep kali|awk '{print $1}'`

echo "vagrant destroy $destroy"

vagrant destroy $destroy
