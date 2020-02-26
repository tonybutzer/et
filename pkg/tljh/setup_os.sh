#! /bin/bash


echo "setup os Tony" > /tmp/os.txt

./installServices.sh >> /tmp/master.log 2>&1

./installDocker.sh > /tmp/docker.log 2>&1


sudo chown -R ubuntu /opt

