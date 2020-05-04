#! /bin/bash

echo "Hello Tony" > /tmp/hellotony.txt

sudo apt-get install -y make

EC=masterswarm
sudo hostname $EC
echo "127.0.0.1 $EC " >> /etc/hosts

sudo mkdir -p /opt
(cd /opt; git clone http://github.com/tonybutzer/k8s101)

sudo chown -R ubuntu /opt

(cd /opt/k8s101/pkg/docker; make install)
