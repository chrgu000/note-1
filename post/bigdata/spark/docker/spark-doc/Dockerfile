FROM ruby:2.1
MAINTAINER dishui_git@126.com
COPY ./t.sh /t.sh
RUN sh /t.sh \
    && apt-get update && apt-get -y install python-pip supervisor\
    && gem install jekyll -v 2.5 \
    && gem install jekyll-redirect-from -v 0.11.0 \
    && gem install pygments.rb \
    && pip install Pygments sphinx 
CMD ["/usr/bin/supervisord","-n"]
