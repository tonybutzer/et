#! /bin/bash

echo "Hello Tony" > /tmp/hellotony.txt

sudo apt-get install -y make

EC=ship0
sudo hostname $EC
echo "127.0.0.1 $EC " >> /etc/hosts

sudo mkdir -p /opt
(cd /opt; git clone http://github.com/tonybutzer/npset)
(cd /opt; git clone http://github.com/tonybutzer/et)

sudo chown -R ubuntu /opt

(cd /opt/npset/pkg/jupyter; make )
(cd /opt/et/pkg/tljh; make services)
