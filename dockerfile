FROM jenkins:1.651.2
USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    git \
    python2.7

RUN wget http://nodejs.org/dist/v5.3.0/node-v5.3.0.tar.gz && \
	tar zxf node-v5.3.0.tar.gz && \
	cd node-v5.3.0 && \
	./configure && \
	make && \
	make install && \
	ln -s /usr/local/bin/node /usr/bin/node

RUN cd / && \
	rm node-v5.3.0.tar.gz && \
	rm -fr node-v5.3.0

RUN npm config set registry https://registry.npm.taobao.org

RUN mkdir /var/app

VOLUME /var/app

USER jenkins