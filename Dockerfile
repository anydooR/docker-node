FROM conyac/base:latest

#RUN apt-get update -y && apt-get upgrade -y
RUN wget -O /tmp/node.tar.gz https://nodejs.org/dist/v0.12.7/node-v0.12.7.tar.gz
RUN cd /tmp/ && tar -zxf node.tar.gz
RUN cd /tmp/node-v*/ && ./configure && make && make install
RUN rm -fr /tmp/node.tar.gz /tmp/node-v*
