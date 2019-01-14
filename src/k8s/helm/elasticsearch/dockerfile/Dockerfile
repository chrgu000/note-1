# step 1
FROM elasticsearch:2.4.6-alpine
ADD docker-entrypoint.sh  /docker-entrypoint.sh
ADD Shanghai  /etc/localtime
ADD elasticsearch-sql-2.4.6.0.zip  /elasticsearch-sql-2.4.6.0.zip
RUN /sbin/apk add curl && /usr/share/elasticsearch/bin/plugin install file:/elasticsearch-sql-2.4.6.0.zip && rm -f /elasticsearch-sql-2.4.6.0.zip

# docker build -t cxzx.com:5000/elasticsearch-sql:2.4.6 .
# docker run --rm -e cluster.name=cxzx-es -it cxzx.com:5000/elasticsearch-sql:2.4.6 bash

