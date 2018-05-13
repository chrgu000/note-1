#! /bin/bash

export JAVA_HOME=/d/env/jdk/jdk1.8.0_31
export MAVEN_HOME=/root/tmp/env/apache-maven-3.0.5

BASE_HOME=/d/dishui/content/post/bigdata/spark
ENV_HOME=/d/env

# kafka
KAFKA_HOME=$ENV_HOME/kafka_2.11-0.10.0.1

# zookeeper
ZOOKEEPER_HOME=$ENV_HOME/zookeeper-3.4.8
ZOOKEEPER_DATA_DIRS=$LOG_HOME/zk-data
ZOO_LOG_DIR=$LOG_HOME

PATH=$PATH:$KAFKA_HOME/bin:$HOME/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$ZOOKEEPER_HOME/bin:$BASE_HOME/bin

export PATH