#!/bin/bash
netinfo="$(ifconfig)"

Addresses=$(echo "$netinfo" | sed -n '/inet / {
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroad Cast Address:/
p
}')
echo -e "The IP addresses on this coputer are :\n$Addresses"