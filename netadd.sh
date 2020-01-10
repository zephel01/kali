#!/bin/bash

cat << 'EOF' >> /etc/network/interfaces
#primary network interface
allow-hotplug eth0
iface eth0 inet static
address 10.0.0.2
netmask 255.255.255.0

#secondry network interface
allow-hotplug eth1
iface eth1 inet dhcp
EOF

