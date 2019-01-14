#! /bin/bash

# Hadoop conf
export HADOOP_HOME=/opt/hadoop-2.7.3
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

SHome=/root/tmp/streamingpro
SDATA=/output/test/streamingpro
SPARK_HOME=/opt/spark-2.2.1

sh $SPARK_HOME/bin/spark-submit   --class streaming.core.StreamingApp \
  --master yarn \
  --deploy-mode client\
  --name test \
  $SHome/streamingpro-spark-2.0-1.0.0.jar \
  -streaming.name test \
  -streaming.platform spark \
  -streaming.job.file.path $SDATA/conf/batch_1.json \
  -streaming.sql.source.a.path $SDATA/source/data.json \
  -streaming.sql.out.b.path $SDATA/out/parquet_1
