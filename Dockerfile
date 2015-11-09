FROM conyac/base:latest

ENV NODE_VERSION v4.2.1
#RUN apt-get update -y && apt-get upgrade -y
RUN wget -O /tmp/node.tar.gz https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION.tar.gz
RUN cd /tmp/ && tar -zxf node.tar.gz
RUN cd /tmp/node-v*/ && ./configure && make && make install
RUN rm -fr /tmp/node.tar.gz /tmp/node-v*
