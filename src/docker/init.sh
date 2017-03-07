#! /bin/bash

# init eth1 network
pipework --wait -i eth1

# add myid
echo $MYID > /zookeeper/data/myid
# add hosts
echo $ZK_HOST1 >> /etc/hosts
echo $ZK_HOST2 >> /etc/hosts
echo $ZK_HOST3 >> /etc/hosts
# start zookeeper
/zookeeper-3.4.8/bin/zkServer.sh start-foreground