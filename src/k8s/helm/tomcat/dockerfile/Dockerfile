# step 1
#FROM tomcat:8.5
#ADD Shanghai  /etc/localtime
#COPY simpleclient_common-0.6.0.jar simpleclient_hotspot-0.6.0.jar simpleclient_servlet-0.6.0.jar simpleclient-0.6.0.jar tomcat_exporter_client-0.0.9.jar /usr/local/tomcat/lib/

#ADD web.xml /usr/local/tomcat/conf/web.xml
#COPY jdk-8u201-linux-x64.tar.gz /

#RUN tar -zxf /jdk-8u201-linux-x64.tar.gz -C /tmp &&\
#    rm -rf /docker-java-home/* &&\
#    cp -r /tmp/jdk1.8.0_201/* /docker-java-home &&\
#    rm -rf /tmp/jdk1.8.0_201 /jdk-8u201-linux-x64.tar.gz


# docker build -t cxzx.com:5000/tomcat:8.5 .
# docker push cxzx.com:5000/tomcat:8.5

FROM cxzx.com:5000/tomcat:8.5
#COPY setenv.sh /usr/local/tomcat/bin/

#RUN rm -rf /usr/lib/jvm/java-8-openjdk-amd64/* &&\
#    cp -r /docker-java-home/* /usr/lib/jvm/java-8-openjdk-amd64
COPY jdk-8u201-linux-x64.tar.gz /
RUN tar -zxf /jdk-8u201-linux-x64.tar.gz -C /tmp &&\
    rm -rf /usr/lib/jvm/java-8-openjdk-amd64/* &&\
    cp -r /tmp/jdk1.8.0_201/* /usr/lib/jvm/java-8-openjdk-amd64 &&\
    rm -rf /tmp/jdk1.8.0_201 /jdk-8u201-linux-x64.tar.gz