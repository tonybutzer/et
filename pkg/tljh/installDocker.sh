#! /bin/bash -x

 sudo apt-get -y update
 sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

 sudo apt-get -y update
 sudo apt-get -y install docker-ce
 sudo apt-get -y install docker-compose

#(3) Verify the installation

 sudo docker run hello-world

 sudo cp ./files/daemon.json /etc/docker

 sudo systemctl restart docker

 sudo docker run hello-world


# add ordinary user to the docker universe
 #sudo usermod -aG docker $USER
 sudo usermod -aG docker ubuntu

