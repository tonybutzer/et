init:
	terraform init

apply:
	terraform apply

destroy:
	terraform destroy
	./renameDefunct.sh butzer-dispatch

bash:
	docker run -i -t -v `pwd`/:/tfinfra tbutzer/terraform bash

ipshow:
	terraform show |egrep  'Name|private_ip|nstance'


git:
	(cd /opt/k8s101; make)
