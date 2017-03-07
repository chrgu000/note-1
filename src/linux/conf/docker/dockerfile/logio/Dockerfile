FROM dishui.io:5000/blacklabelops/logio:0.3.4

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
COPY ./rsyslog.conf /etc/rsyslog.d/listen.conf

RUN mkdir -p ~/log \
	&& chmod u+x /docker-entrypoint.sh

EXPOSE 514

ENTRYPOINT ["/docker-entrypoint.sh"]