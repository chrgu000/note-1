#!/bin/bash

echo "1" > /proc/sys/net/ipv4/ip_forward #打开转发功能

/sbin/iptables -F -t filter

/sbin/iptables -F -t nat  #清空iptables

/sbin/iptables -t nat -A PREROUTING -d 210.14.137.118 -p tcp --dport 8089 -j DNAT --to-destination 192.168.1.125:8089    #去192.168.1.125的一条路

/sbin/iptables -t nat -A POSTROUTING  -s 192.168.1.0/24 -o eth1 -j SNAT --to 210.14.137.118








#!/bin/bash

echo "1" > /proc/sys/net/ipv4/ip_forward #打开转发功能

/sbin/iptables -F -t filter

/sbin/iptables -F -t nat  #清空iptables

/sbin/iptables -t nat -A PREROUTING -d 192.168.137.14 -p tcp --dport 8089 -j DNAT --to-destination 192.168.137.13:80    #去192.168.1.125的一条路

/sbin/iptables -t nat -A POSTROUTING  -s 192.168.137.0/24 -o eth1 -j SNAT --to 192.168.137.14