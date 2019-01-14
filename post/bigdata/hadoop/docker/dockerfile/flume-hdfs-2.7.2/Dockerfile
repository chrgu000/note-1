FROM dishui.io:5000/probablyfine/flume
MAINTAINER dishui_git@126.com
COPY ./es-1.7.tar /
COPY ./es.conf /etc/supervisord.conf.d/es.conf
#系统时间
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime