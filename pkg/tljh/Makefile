cat:
	cat ./Makefile

all: boot shared

boot:
	./bootstrapTheHub.sh


services:
	./installServices.sh
	./installDocker.sh


shared:
	sudo mkdir -p /srv/data/code
	(cd /etc/skel && sudo ln -s /srv/data/code code)
	sudo cp files/* /srv/data/code
	sudo chown -R  jupyter-ubuntu:jupyter-ubuntu /srv/data/code


ubuntu:
	sudo cp -r files /home/jupyter-ubuntu
	sudo chown jupyter-ubuntu:jupyter-ubuntu -R /home/jupyter-ubuntu


git:
	(cd /opt/et && make)

