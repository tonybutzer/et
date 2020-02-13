# Learning Plan

## Books

### Kubernetes on AWS
https://github.com/PacktPublishing/Kubernetes-on-AWS

#### Overview of the Book

1. Google wanted a container scheduler
    - originally Borg.
2. leverages docker and etcd
3. written in GO

Why do I need a k8s cluster?

1. self-healing ...

Containers
1. came from the chroot syscall
2. used in sandboxing
3. cgroups, controlgroups
    - interface for controlling a group of processes
    - resource utilization limits (mem, cpu, I/O)
    - snapshot and restore
4. Namespaces
    - Mount, Users, PIrD, Network etc.
5. Docker simplifies these details
    - simple to use and understand abstraction

- k8s is fundamentally a work scheduler for a cluster of computers

- move from manual human processes to encoded operational knowledge

- current state (control loop) --> desired state

- declarative versus imparative

### Concepts

- pods == linked containers
    - each pod has unique IP address and network namespace shared by all containers within the pod.
    - containers in your pod have a shared lifecycle.

- labels
    - can be added to resource - like pods for example.
    - flexible
    - useful for selectors, etc  - just like AWS labels
    - key-value pairs

more about effective labeling can be found here:
https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels/

- replica sets
    - resource that templates the creation of pods
    - desired replicas
    - pods are ephemeral
        - can be evicted
    - replica set - used to be called ReplicationController

- Deployments --> use replica sets ?
    - we manage deployments

- Services 
    - SERVICE DISCOVERY FOR ACCESSING
    - service can define a lebel selector - to refer to a group of pods
    - stable DNS name - and associated IP address - round-robins to our pods


## Helm

### Helm Cheat

```
helm ls
helm install
helm delete

helm fetch --untar
```


### Helm Installation


Visit https://github.com/kubernetes/helm/releases to download the version you need for your platform.

helm init


### helm installing a chart

#### Resource

Helm charts for at https://hub.kubeapps.com/. As well


Before you install a chart, you will need to know three things: 
- The name of the chart you want to install 
- The name you will give to this release (If you omit this, Helm will create a random name for this release) 
- The namespace on the cluster you want to install the chart into (If you omit this, Helm will use the default namespace)


```
helm repo list
```


#### Ref

- /opt/juphub/labs/01-helm/example
- /opt/juphub/labs/03-helm-simple/product-stack/charts/debugger

## Helm values.yaml

Lots of stuff can get specified in the values.yaml

- the docker image
- the service IP type (usually: ClusterIP)
- the PORT

- is an ingress controller used and how
- resource limits
- nodeSelector - specify which node types
- tolerations
- affinity

- pod labels

Alternately; there can be very simple values.yaml files fith hardly anything in them

### Excerpt


```
image:
  repository: tbutzer/bash-tester
  tag: latest
  pullPolicy: IfNotPresent

service:
  type: ClusterIP
  port: 9999

```

## Helm Chart.yaml

Seems to be more descriptive - TBD

```
apiVersion: v1
appVersion: "1.0"
description: bash with network discovery tools
home: tbd
name: debugger
fullname: simple_debugger
version: 0.2.0
```

## Helm templates directory

### service.yaml

Defines the service

- Kind: Service
- metadata:
	- name 
	- originating chart
	- release and heritage
- spec:
	- type
	- ports
	- selector

### deployment.yaml

Defines the deployment

- Kind: Deployment
- metadata:
	- name chart full name release etc
- spec:
	- replicas
	- selector matching
	- template: ??
	- spec (subspec?)
		- serviceAccountName - ??
		- containers: {{ that make up the service from values }}
			- images  {{ obtained via variables }}

## Helm helpers and RBAC more to come ...

- RBAC overview video - nice:
https://www.youtube.com/watch?v=CnHTCTP8d48


## Kubeslate Helm Example

### Ref
/opt/juphub/labs/01-helm/example

### Steps

```
cd /opt/juphub/labs/01-helm/example

make install

kubectl get svc
```

```
default       my-slate-kubeslate     ClusterIP   10.152.183.149   <none>        80/TCP              4s
```


- firefox 10.152.183.149

### Remember to Monitor with Grafana

- kubectl cluster-info | grep Graf
- open the link via the proxy
- view the cluster and te pods

### Book highlites on kubeslate

#### Acknowledgements

Robinson, Ed. Kubernetes on AWS: Deploy and manage production-ready Kubernetes clusters on AWS . Packt Publishing. Kindle Edition. 

- helm repo list

```
NAME            URL
stable          https://kubernetes-charts.storage.googleapis.com
local           http://127.0.0.1:8879/charts
jupyterhub      https://jupyterhub.github.io/helm-chart/
errm            https://charts.errm.co.uk
pangeo          https://pangeo-data.github.io/helm-chart/
```

- $ helm install --name=my-slate errm/kubeslate
- helm install --name labeled-slate --set podLabels.hello=world errm/kubeslate
- kubectl get pods -l hello=world




## microk8s

### Restarting

### Ref

10-microk8s

Makefile

snap install - use the docker version stable channel 1.13

see makefile

