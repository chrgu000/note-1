#! /bin/bash

# Hadoop conf
export HADOOP_HOME=/opt/hadoop-2.7.3
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_CONF_DIR=/opt/hadoop-2.7.3/etc/hadoop/
export SPARK_HISTORY_OPTS="-Dspark.history.ui.port=18080 -Dspark.history.retainedApplications=5 -Dspark.history.fs.logDirectory=hdfs://vm73:8020/spark-log"

SPARK_HOME=/opt/spark-2.2.1

# sh $SPARK_HOME/sbin/start-history-server.sh


if [[ "$@" = *--help ]] || [[ "$@" = *-h ]] || [[ "$#" = 0 ]]; then
  echo "Usage: ./bin/history.sh [start|stop]"
  pattern="Usage:"
  pattern+="\|./bin/history.sh start"
  pattern+="\|./bin/history.sh stop"

  exit 1
fi



case $1 in
  (start)
  echo "Start History Server"
  sh $SPARK_HOME/sbin/start-history-server.sh
  ;;
  (stop)
  echo "Stop History Server"
  sh $SPARK_HOME/sbin/stop-history-server.sh
  ;;
  (restart)
  echo "Stop History Server"
  sh $SPARK_HOME/sbin/stop-history-server.sh
  echo "Start History Server"
  sh $SPARK_HOME/sbin/start-history-server.sh
  ;;
esac
