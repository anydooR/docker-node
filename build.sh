#!/bin/bash
set -ex

#apt-get update && apt-get upgrade -y --no-install-recommends 
#apt-get install -y --no-install-recommends libpcre3-dev gcc  g++ make autoconf libgd3 libgd-dev  libssl-dev ca-certificates
#cd /tmp
#curl  -SLO https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz
#tar xvzf node-v$NODE_VERSION.tar.gz
#cd /tmp/node-v*/ 
#./configure && make && make install
#rm -fr /tmp/node.tar.gz /tmp/node-v*

cd /tmp
curl  -SLO https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz
tar xvzf node-v${NODE_VERSION}-linux-x64.tar.gz
mv /tmp/node-v${NODE_VERSION}-linux-x64  /usr/local/node-v${NODE_VERSION}
ln -s /usr/local/node-v${NODE_VERSION} /usr/local/node
ln -s /usr/local/node-v${NODE_VERSION} /usr/local/node
ln -s /usr/local/node/bin/node /usr/local/bin/node
ln -s /usr/local/node/bin/npm /usr/local/bin/npm


