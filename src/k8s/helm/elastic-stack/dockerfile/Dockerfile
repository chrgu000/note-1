FROM elasticsearch:6.5.0
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    /usr/share/elasticsearch/bin/elasticsearch-plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/6.5.0.0/elasticsearch-sql-6.5.0.0.zip

# docker build -t cxzx.com:5000/elasticsearch-sql:6.5.0 .