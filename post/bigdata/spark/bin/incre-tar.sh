#! /bin/bash
# set -x

# JARS=/d/project/Framework/plugins
# JARS_REMOTE=/opt/do/Toolbox/plugins
# TMP_TAR_PATH=/opt/do/Toolbox/plugins

JARS=/d/IdeaProject/hdfs-over-ftp-master/target
JARS_REMOTE=/home/hdfs/zk-tmp/jar/part
TMP_TAR_PATH=.

function usage(){
  if [[ "$@" = *--help ]] || [[ "$@" = *-h ]] || [[ "$#" = 0 ]] || [[ "$#" < 2 ]]; then
    pattern="Usage:\n"
    pattern+="  incre-tar mktar jar class\n"
    pattern+="  incre-tar updatejar jar class"
    echo -e $pattern
    exit 1
  fi
}

function mktar(){
    cd $JARS
    JAR=$1
    CLASS=$2

    FILES=`jar tvf ${JAR}|grep $CLASS|awk '{print $8}'`

    RESULT=`jar xvf ${JAR} $FILES|awk '{print $2}'`
    echo $RESULT
    tar -zcf tmp.tar.gz $RESULT
    rm -rf com/
    # jar uvf $JAR $RESULT

}

function updatejar(){
    JAR=$1
    CLASS=$2
    cd $TMP_TAR_PATH
    tar -zxf tmp.tar.gz -C $JARS_REMOTE

    RESULT=`tar -tvf ${TMP_TAR_PATH}/tmp.tar.gz|awk '{print $6}'`
    cd $JARS_REMOTE
    echo $RESULT
    echo "Update Start!"
    jar -uvf $JAR $RESULT
    echo "Update Done!"
    rm -rf com/
}

function remove(){
    local FOLDER=$1
    cd $FOLDER
    rm -rf com/
}


case $1 in
#
  (mktar)
  echo "=== 打包增量文件 ==="
  mktar $2 $3
  ;;
#
  (updatejar)
  echo "=== 更新 ==="
  updatejar $2 $3
  ;;
#
  (*)
  usage
  ;;
esac