FROM prom/pushgateway:v0.7.0
ADD Shanghai  /etc/localtime

COPY pushgateway /bin/pushgateway
RUN chmod +x /bin/pushgateway

# docker build -t cxzx.com:5000/prom/pushgateway:v0.7.1 .
# docker push cxzx.com:5000/prom/pushgateway:v0.7.1