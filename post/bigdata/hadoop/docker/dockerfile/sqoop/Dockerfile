FROM kiwenlau/hadoop-hive:1.0

COPY sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz /
ENV SQOOP_HOME=/sqoop-1.4.6.bin__hadoop-2.0.4-alpha
ENV HIVE_HOME=/apache-hive-1.2.1-bin
ENV PATH="/sqoop-1.4.6.bin__hadoop-2.0.4-alpha/bin:${PATH}"
RUN tar -zxf /sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz -C / \
    && rm -f /sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz