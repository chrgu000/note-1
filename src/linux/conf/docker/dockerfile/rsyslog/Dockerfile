FROM blacklabelops/centos

RUN yum install -y \
    vi rsyslog && \
    yum install crontabs -y && \
    yum clean all && rm -rf /var/cache/yum/* && \
    echo "30 22 * * * . /usr/sbin/logrotate /etc/logrotate.conf" >> /var/spool/cron/root && \
    mkdir -p ~/log

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
COPY ./rsyslog.conf /etc/rsyslog.d/listen.conf
COPY ./wuliu /etc/logrotate.d/wuliu

EXPOSE 514
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["rsyslogd"]