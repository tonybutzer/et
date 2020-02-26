#! /bin/bash

echo "Hello Tony" > /tmp/hellotony.txt

hname=gahub1

sudo hostname $hname
echo "127.0.0.1 $hname" >> /etc/hosts
sudo mkdir -p /opt

(cd /opt; git clone http://github.com/tonybutzer/et)

sudo chown -R ubuntu /opt

sudo apt-get install -y make

# (cd /opt/et//pkg/os; ./setup_os.sh)
