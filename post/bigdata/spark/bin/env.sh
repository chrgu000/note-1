#! /bin/bash

export JAVA_HOME=/usr/java/jdk1.8.0_131
export HADOOP_HOME=/opt/hadoop-2.7.3
export SPARK_HOME=/opt/spark-2.2.1
export MAVEN_HOME=/root/tmp/env/apache-maven-3.0.5
export STREAMPRO_HOME=/root/tmp/streamingpro

BASE_HOME=/root/tmp/test
ENV_HOME=/root/tmp/test/env
LOG_HOME=$BASE_HOME/logs

# kafka
KAFKA_HOME=$ENV_HOME/kafka_2.11-0.8.2.2
KAFKA_LOG_DIRS=$LOG_HOME/kafka-data
KAFKA_HOST_NAME=`hostname`
KAFKA_NUM_PARTITIONS=3
#KAFKA_ZK_URL='vm73:2181,vm74:2181,vm75:2181/kt1'
KAFKA_JMX_PORT=12347

# kafka_manager
KAFKA_MANAGER_HOME=$ENV_HOME/kafka-manager-1.3.3.7
KAFKA_MANAGER_PORT=9000
export ZK_HOSTS='vm73:2181,vm74:2181,vm75:2181'

# zookeeper
ZOOKEEPER_HOME=$ENV_HOME/zookeeper-3.4.8
ZOOKEEPER_DATA_DIRS=$LOG_HOME/zk-data
ZOO_LOG_DIR=$LOG_HOME

# flume
FLUME_HOME=$ENV_HOME/apache-flume-1.8.0-bin

PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$HADOOP_HOME/bin:$SPARK_HOME/bin:$MAVEN_HOME/bin:$ZOOKEEPER_HOME/bin:$BASE_HOME/bin

export PATH