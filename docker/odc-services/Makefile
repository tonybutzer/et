instructions:
	echo make up
	echo dont forget make refresh-data
	echo make exec
	echo cd /opt/indexc2/prepare
	echo more Makefile

up:
	docker-compose up -d

down:
	docker-compose down

build:
	echo update buildversion first Dockerfile
	python increment-version.py buildversion
	docker-compose build

build-just-indexc2:
	python increment-version.py tversion
	docker-compose build

exec:
	docker-compose exec admin-jupyter bash

verify-elastic:
	docker-compose exec kibana curl elasticsearch:9200

refresh-data:
	rm -fr data/opt
	mkdir data/opt
	(cd data/opt; git clone http://github.com/tonybutzer/notebook)
	(cd data/opt; git clone http://github.com/tonybutzer/indexc2)

restart:
	docker-compose restart jupyter


increment:
	 # (export PAGER=cat; pydoc increment-version)
	python increment-version.py tversion


# ADMIN STUFF
# -------------------------------------------------------------------------------------

git:
	(cd /opt/et ; make)

install-docker:
	sudo apt-get update -y
	sudo apt-get install -y make
	sudo apt-get install -y awscli
	sudo apt install -y docker.io
	sudo docker run hello-world
	sudo usermod -aG docker ${USER}
	sudo chmod 666 /var/run/docker.sock
	echo logout PLEASE!


install-compose:
	sudo apt install -y docker-compose


group:
	sudo usermod -aG docker ${USER}

