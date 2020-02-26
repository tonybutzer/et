#! /bin/bash

# sudo apt-get upadte

echo "Hello Tony" > /tmp/hellotony.txt

sudo hostname odchub0
echo "127.0.0.1 odchub0" >> /etc/hosts
sudo mkdir -p /opt

(cd /opt; git clone http://github.com/tonybutzer/jup)

sudo chown -R ubuntu /opt

# (cd /opt/jup/juphub/pkg; ./setup_os.sh)
