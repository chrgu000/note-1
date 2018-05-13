#! /bin/bash

# Hadoop conf
export PROTOC_HOME=/d/env/protoc-2.5.0-win32

# proto文件所在目录
SRC_DIR=$1
# 生成java文件输出目录
DST_DIR=$2 
# proto文件
PROTO_FILE=$3

if [[ "$@" = *--help ]] || [[ "$@" = *-h ]] || [[ "$#" = 0 ]]; then
  echo 'protobuf.sh proto文件所在目录 生成java文件输出目录 proto文件'
  exit 1
fi

exec $PROTOC_HOME/protoc -I=$SRC_DIR --java_out=$DST_DIR $SRC_DIR/$PROTO_FILE