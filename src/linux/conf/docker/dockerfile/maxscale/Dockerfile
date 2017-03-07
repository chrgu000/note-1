FROM dishui.io:5000/asosso/maxscale:1.4
MAINTAINER dishui_git@126.com
COPY ./maxscale.cnf /etc/maxscale.d/maxscale.cnf
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


# docker build --no-cache -t dishui.io:5000/dishuigit/maxscale:1.4 .