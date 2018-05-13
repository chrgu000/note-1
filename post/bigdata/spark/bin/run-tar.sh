#! /bin/bash
# set -x

TAR_FOLDER=/d/IdeaProject/tar

DATESTMP=$(date +%Y%m%d%H)
SSHURL=root@127.0.0.1
SSHPORT=7075
REMOTEDEST=/root/tmp/test/tar
REMOTECMD=/root/tmp/test/bin/run-untar.sh

# git status|grep "scala\|java"|awk '{print $2}'

if [ ! -d "$TAR_FOLDER" ];then 
  mkdir -p $TAR_FOLDER
fi


function usage(){
  if [[ "$@" = *--help ]] || [[ "$@" = *-h ]] || [[ "$#" = 0 ]] || [[ "$#" < 2 ]]; then
    pattern="Usage:\n"
    pattern+="  run-tar f folder\n"
    pattern+="  run-tar d folder"
    echo -e $pattern
    exit 1
  fi
}

function folder(){
  if [ ! -d "$1" ];then 
    echo "$1 is not exist!"
    exit 1
  else
    cd $1/..
    local bn=`basename $1`
    tar -zcf "$TAR_FOLDER/$DATESTMP.tar.gz" --exclude=".git" $bn
    # tar -zcf "$TAR_FOLDER/$DATESTMP.tar.gz" $bn
    echo "$TAR_FOLDER/$DATESTMP.tar.gz"
  fi
}


function somefile(){
  cd $1
  local bn=`basename $1`
  # git status|grep "scala\|java"|awk -F':' '{print $2}'| xargs -I f echo "$bn/"f  
  # 
  # git status|grep "*.scala\|*.java\|pom"|awk -F':' '{print $2}'|awk '{sub("^ *","");sub(" *$","");print prefix""$0}' prefix="$bn/" > ../tmp
  git status -s|awk '{if($1 !~ "D"){print $2}}'|awk '{sub("^ *","");sub(" *$","");print prefix""$0}' prefix="$bn/" > ../tmp
  cd ..
  # awk '!a[$0]++' tmp
  awk '!a[$0]++' tmp | xargs tar -czf "$TAR_FOLDER/$DATESTMP.tar.gz"
  # rm -f tmp
  echo "$TAR_FOLDER/$DATESTMP.tar.gz"
}

function remotecopy(){
  scp -P $SSHPORT $1 $SSHURL:$REMOTEDEST
}

function remotecmd(){
  ssh -tt -p $SSHPORT $SSHURL "$REMOTECMD"
}


case $1 in
  (d)
  echo "=== 打包目录 ==="
  folderpwd=$(cd "`dirname "$2"`"/$2; pwd)
  # folder $folderpwd
  remotecopy `folder $folderpwd`
  remotecmd
  echo "===  Copy to $REMOTEDEST Success! ==="
  ;;
#
  (f)
  echo "=== 打包增量文件 ==="
  folderpwd=$(cd "`dirname "$2"`"/$2; pwd)
  # somefile $folderpwd
  remotecopy `somefile $folderpwd`
  cat $folderpwd/../tmp
  cd $folderpwd/..
  rm -f tmp
  remotecmd
  echo "===  Copy to $REMOTEDEST Success! ==="
  ;;
#
  (*)
  usage
  ;;
esac