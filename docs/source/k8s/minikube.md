# Minikube Up and Running

## jose host
- local linux host - debian based

## Virtual Box 

### Install

```bash
sudo apt-get install -y virtualbox
```

## kubectl

```bash
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
```

## minikube

```bash
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
```

#### STARTING

```
minikube start
```

-   "minikube" IP address is 192.168.99.100


### kubctl context

```
tony@jose ~/opt/juphub/docs $ more ~/.kube/config
apiVersion: v1
clusters:
- cluster:
    certificate-authority: /home/tony/.minikube/ca.crt
    server: https://192.168.99.100:8443
  name: minikube
contexts:
- context:
    cluster: minikube
    user: minikube
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:
- name: minikube
  user:
    client-certificate: /home/tony/.minikube/client.crt
    client-key: /home/tony/.minikube/client.key
```

- set as follows

``` 
kubectl config use-context minikube
```

### Sample commands

```
alias k=kubectl

k describe node/minikube
```


## minikube docker local to VM

```bash


docker ps
docker version

minikube docker-env

eval $(minikube docker-env)

docker version
docker ps # whoa!
```

## Create a Makefile

- see labs in the juphub github repo under minikube

## NodePort

- expose a tandom port on the minikube VM - so we can access our service easily?
- a service with NodePort type - k8s allocates us a port for the service to be exposed on
	- in a multi-node cluster this will be exposed on every node in the cluster

```bash
tony@jose ~/opt/juphub/labs/minikube $ make hello_getip
minikube ip
192.168.99.100
kubectl get svc/hello
NAME    TYPE       CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
hello   NodePort   10.108.138.155   <none>        80:31442/TCP   6m35s
echo "curl <ip>:<port>"
curl <ip>:<port>
tony@jose ~/opt/juphub/labs/minikube $ curl 192.168.99.100:31442
<h1>Hello World minikube</h1>
tony@jose ~/opt/juphub/labs/minikube $ curl 10.108.138.155:31442
^C
tony@jose ~/opt/juphub/labs/minikube $ curl 10.108.138.155:80
^C
```

- **NOTE:** because its a NodePort - neither of the last 2 curls work

## kubectl run

from book:

When we executed --kubectl run--, Kubernetes created a new sort of resource: a **deployment**. 

- higher level abstraction manages the underlying ReplicaSet
- changes to our application can be managed in roll-outs etc

[hello arch diag LINK](https://drive.google.com/open?id=18ZiO3oXa4BDeOt8i3ECQvMk_ni-z8Lr1)
