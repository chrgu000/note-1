#! /bin/bash

SHome=/root/tmp/streamingpro
SDATA=$SHome/data
SPARK_HOME=/opt/spark-2.2.1

sh $SPARK_HOME/bin/spark-submit   --class streaming.core.StreamingApp \
  --master local[2] \
  --name test \
  $SHome/streamingpro-spark-2.0-1.0.0.jar \
  -streaming.name test    \
  -streaming.platform spark_streaming \
  -streaming.job.file.path file://$SHome/conf/streaming-1.json
