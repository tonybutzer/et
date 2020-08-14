# K3s


## Reference

https://github.com/rancher/k3s/blob/master/docker-compose.yml


## Concept

Start a k3s docker implementation using compose


## WIP

1. document the resources/references
2. clone the github repo and scour for info
	- ( cd /opt; git clone https://github.com/rancher/k3s)

3. start up a k3s implementation
4. add rancer to manage this cluster
5. then all the bells and whistles
	- elastic logging fluent etc
	- metering fith promethius and grafana
	- testing workloads - redo tutorials for k8s microk8s







## OLD SHIT
this terraform code creates a master and two ships all running docker and IAC via terraform
i Hope:


1.  master
2.  ship1
3.  ship2


## WIP

### Rancher

1. Read the docs rancher


1. installing and learning the cli plus rke
	- watch this
		- How to install a Kubernetes Cluster with Rancher - Henrik Hoegh
			- 
	- study this github repo
		- login to mr umyssh mr
		- git clone http://github.com/hoeghh/rancher-launcher-kvm
		


## oleWIP

1. test start and stop of ships
2. do it again this time with auto start of docker
2. add master with docker 
4. take a walk and plan next steps


## Next Steps

### Stopping Ships

1. Makefile defunct edits
2. change startup userdata to be ship dependent ship0 and ship1
3. start master also
4. auto install docker


