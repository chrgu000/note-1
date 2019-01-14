FROM dishui.io:5000/mysql:5.5.52
MAINTAINER dishui_git@126.com
COPY ./my.cnf /etc/mysql/my.cnf
COPY ./mysqld.cnf /etc/mysql/conf.d/mysqld.cnf
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && mkdir /data