FROM wuliu/tomcat:1.1

COPY ./setenv.sh /apache-tomcat-7.0.62/bin/setenv.sh
COPY ./server.xml /apache-tomcat-7.0.62/conf/server.xml
COPY ./tomcat.conf /etc/supervisord.conf.d/tomcat.conf
COPY ./tomcat-log.conf /etc/rsyslog.d/listen.conf

RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo \
	&& yum install -y rsyslog  \
	&& yum clean all \
	&& rm -rf /var/cache/yum/*

ENTRYPOINT  ["/usr/bin/supervisord","-n"]