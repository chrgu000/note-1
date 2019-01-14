FROM puckel/azkaban-executor

COPY t.sh /t.sh
RUN /bin/sh /t.sh
RUN curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh -
