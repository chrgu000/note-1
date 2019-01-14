#! /bin/bash
# set -x

export MAVEN_HOME=/root/tmp/env/apache-maven-3.0.5

TAR_FOLDER=/root/tmp/test/tar
DATESTMP=$(date +%Y%m%d%H)
DEST=/root/tmp/test/maven
TAR_FILE=$TAR_FOLDER/$DATESTMP.tar.gz

if [ ! -f "$TAR_FILE" ];then
  echo "$TAR_FILE 文件不存在！"
fi

tar -zxf "$TAR_FILE" -C $DEST

MVN_PROJECT=`tar -tvf $TAR_FILE|head -n 1|awk '{print $NF}'`

cd $DEST/$MVN_PROJECT

find . -name pom*|xargs -I pom mvn clean -f pom



find . -name pom*|grep "common"|xargs -I pom mvn install -f pom

find . -name pom*|grep "flume"|xargs -I pom mvn package -f pom

find . -name pom*|grep "kafka"|xargs -I pom mvn clean package -f pom

cd /root/tmp/test/maven/output
cp kafkainceptor-jar-with-dependencies.jar /root/tmp/opt/apache-flume-1.8.0-bin/plugins.d/r1/lib