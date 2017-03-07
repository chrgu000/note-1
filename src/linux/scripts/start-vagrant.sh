#!/bin/sh

COREOS=/d/vagrant/CoreOS
SWARM=/d/vagrant/CoreOS-Cluster-Test
SWARM01=/d/vagrant/CoreOS-1214
CentOS=/d/vagrant/CentOS
RANCHER1=/d/vagrant/CoreOS-1235.2.0-rancher-1
RANCHER2=/d/vagrant/CoreOS-1235.2.0-rancher-2


case "$1" in
    gollum)
        cd $COREOS && vagrant $2 || exit 0
        ;;
    swarm)
        cd $SWARM && vagrant $2 || exit 0
        ;;
    swarm01)
        cd $SWARM01 && vagrant $2 || exit 0
        ;;
    centos)
        cd $CentOS && vagrant $2 || exit 0
        ;;
	rancher1)
        cd $RANCHER1 && vagrant $2 || exit 0
        ;;
	rancher2)
        cd $RANCHER2 && vagrant $2 || exit 0
        ;;
	status)
        gollum status | awk '{if(NR==3){print $1" "$2}}'
        swarm status | awk '{if(NR==3){print $1" "$2}}'
        swarm01 status | awk '{if(NR==3){print $1" "$2}}'
        centos status | awk '{if(NR==3){print $1" "$2}}'
        ;;
    *)
        echo $"Usage: $0 {gollum|swarm|swarm01|centos} {up|halt|reload|status}"
        exit 2
esac