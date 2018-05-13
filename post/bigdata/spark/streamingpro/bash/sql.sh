#! /bin/bash

##### usage #####
# cd /root/tmp/streamingpro
# nohup sh bin/sql.sh 1>logs/sql.log 2>logs/sql.err &
##### usage #####

SHome=/root/tmp/streamingpro
SPARK_HOME=/opt/spark-2.2.1

sh $SPARK_HOME/bin/spark-submit   --class streaming.core.StreamingApp \
  --master local[2] \
  --name sql-interactive \
  $SHome/streamingpro-spark-2.0-1.0.0.jar    \
  -streaming.name sql-interactive    \
  -streaming.job.file.path file://$SHome/conf/query.json \
  -streaming.platform spark   \
  -streaming.rest true   \
  -streaming.driver.port 9003   \
  -streaming.spark.service true \
  -streaming.thrift true \
  -streaming.enableHiveSupport true