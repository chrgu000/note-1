#!/bin/bash

revision_start=2482
revision_end=2483

source /etc/profile

base="/root/.jenkins/workspace/mailiqing-increment/wuliu-production"

#更新文件列表
update_list="$base/update.txt"

#日期
date=$(date +%Y-%m-%d)
#增量打包文件
tar_file="$base/path/pc-wuliu-path$date.tar.gz"
#本地svn仓库地址
svn_repo_url="$base/tky"
#编译后的class文件路径
path="$svn_repo_url/WebRoot/WEB-INF/classes"
webroot="$svn_repo_url/WebRoot"

function exar() {
    #awk -F'.' '{if($NF ~ "java"){print $0}}' $1 | xargs -I t getLs t
    while read LINE
    do
        # 获取目录
        local t_dir=`echo $LINE | awk -F'.' '{if($NF == "class"){print $0}}' | xargs -I t dirname t`
        # 获取内部类
        ls $t_dir | awk '{print $1}' | awk -F'.' '{if($1 ~ /\$/){print dir"/"$1".class"}}' dir="$t_dir" >> $webroot/filelist1
    done < $1
}

# 清空
cd $path &&\
rm -rf * &&\

cd $svn_repo_url &&\
#本地版与最新版的差异
svn diff --summarize -r $revision_start:$revision_end * | awk '{if($1 != "D"){print $2}}' | awk -F '.' '{if($NF ~ "jsp|js|java|xml|css|properties|png|jpg|html|jar|ftl"){print $0}}' > $update_list
cat $update_list
#判断 是否有更新
if [ -s $update_list ];then
    # svn 更新
    svn update -r HEAD * &&\
    #记录版本号
    #svn info WebRoot | awk -F':' '{if($1 == "Revision"){gsub(/ /,"",$2);print $2}}' > $revision &&\
    # ant 编译
    ant -f ./build-production.xml &&\
    cat $update_list | awk '{gsub("WebRoot/",webroot);gsub("src/",path);gsub("^resources/",path);gsub(".java$",".class");print $0}' path="$path/" webroot="$webroot/" | awk -F 'WebRoot/' '{print $2}' > $webroot/filelist
    #
    if [ -s $webroot/filelist ];then

        cd $webroot &&\
        exar $webroot/filelist &&\
        cat $webroot/filelist1 >> $webroot/filelist &&\
        cat $webroot/filelist &&\
        #增量打包
        awk '!a[$0]++' filelist| xargs tar -czf $tar_file &&\
        rm -f filelist filelist1 &&\
        cd $svn_repo_url &&\
        tar -tPvf $tar_file | awk '{print $6}' &&\
        echo "增量更新文件打包OK!路径:$tar_file"
        scp -P2222 $tar_file core@$scp_ip:~/tmp &&\
        echo "增量包copy到$scp_ip成功"

        if [[ $Restart == true ]];then
            ssh -tt -p 2222 core@116.90.81.68 "/home/core/bin/wuliu-restart.sh"
        else
            ssh -tt -p 2222 core@116.90.81.68 "/home/core/bin/wuliu.sh"
        fi


        #echo "$scp_ip增量包解压成功"
    else
        echo "增量打包文件列表为空!"
    fi
else
    echo "没有最新的文件了!"
fi