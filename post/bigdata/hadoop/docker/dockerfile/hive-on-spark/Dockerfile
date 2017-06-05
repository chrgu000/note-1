FROM kiwenlau/hadoop:1.0

COPY apache-hive-2.1.1-bin.tar.gz /
COPY spark-1.5.3-SNAPSHOT-bin-hadoop2-without-hive.tgz /
COPY mysql-connector-java-5.1.7-bin.jar /
ENV HIVE_HOME=/usr/local/apache-hive-2.1.1-bin
ENV SPARK_HOME=/usr/local/spark-1.5.3
ENV PATH="$HIVE_HOME/bin:$SPARK_HOME/bin:$SPARK_HOME/sbin:${PATH}"
RUN tar -zxf /apache-hive-2.1.1-bin.tar.gz -C /usr/local \
    && tar -zxf /spark-1.5.3-SNAPSHOT-bin-hadoop2-without-hive.tgz -C /usr/local \
    && mv /usr/local/spark-1.5.3-SNAPSHOT-bin-hadoop2-without-hive /usr/local/spark-1.5.3 \
    && \
    && \
    && mv /mysql-connector-java-5.1.7-bin.jar /apache-hive-2.1.1-bin/lib \
    && rm -f /apache-hive-1.2.1-bin-my.tar.gz \
    && rm -f /spark-1.5.3-SNAPSHOT-bin-hadoop2-without-hive.tgz
