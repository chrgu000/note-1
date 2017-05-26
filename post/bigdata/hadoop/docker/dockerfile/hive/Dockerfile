FROM kiwenlau/hadoop:1.0

COPY apache-hive-1.2.1-bin-my.tar.gz /
ENV PATH="/apache-hive-1.2.1-bin/bin:${PATH}"
RUN tar -zxf /apache-hive-1.2.1-bin-my.tar.gz -C / \
    && rm -f /apache-hive-1.2.1-bin-my.tar.gz
