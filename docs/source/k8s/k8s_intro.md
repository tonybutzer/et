
# Kubernetes Intro

## What is k8s?

- Container Management Tool!
- Containers are good!
	- scalable - but how? - k8s
- k8s manages the containers
- k8s manages an overlay network and a set of services
	- resource discovery
- k8s adds autoscaling
- k8s does load balancing
- k8s does replicas
- k8s groups conatiners (microkernel services) into logical groups

## WHY K8S?

- ROBUST and RELIABLE
- K8S is an abbrevation for Kuberenetes
- bases for juperhub deployments
- Google built it and uses it
- Tools use the Go language
	- https://tour.golang.org/welcome/1
	- https://gobyexample.com/
- automated binpacking
- Service Discovery
- Storage Orchestration
- Self Healing
- Batch Execution
- Horizontal Scalig
- Secret & Configuration Managment
- Automatic Rollbacks & Rollouts


## Declarative

- Desired State - Deployment File : application1.yaml
	- PODS
		- Replicas (ie: 3)


## Components

- Master
	- k8s cluster services
		- API
	- Controller Manager + Scheduler
		- manages core control loops
		- scheduler - watches for new pods and places the pods on the best nodes
		- Api Server --> etcd
			- central hub

- Workers
	- kubelet for communicating
		- agent for launching pods
		- uses docker underneath
		- PodSpec scope only
		- cadvisior is leveraged to understand node resource levels



- The pod
	- made up of one or more containers
	- often a single container
	- share a unique network namespace and ip range

- Labels
	- can label pods
	- help identify resources
	- selectors can then be used within k8s
	- examples app=frontend, app=backend, run=myappPod
	- https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels/

- ReplicaSet
	- a resource that tempates the creation of pods
	- a count of the number of desired replicas
	- a selector that refers to the desired pods
	- pods can be evicted; or a node may go down
	- ReplicaSet is a better/newer name for ReplicaController
	- these are managed via a Deployment File: a.yaml

- Services
	- give a convienent way to access our application services
	- plus service discovery
	- stable IP address and/or DNS Name
	- typically accessed in a round robin fashion - via frontend service (load balancer)
	- the IP address is the address of the service




## Myths

- Not a Containerization Platform - still need docker for that
- Not for simple architectures

## Compare Swarm

[COMPARE swarm](https://drive.google.com/open?id=1Nn_MkEDeIfIHU8td4zpjqzFf4idDHSY-)

## k8s Architecture
[Architecture Picture LINK](https://drive.google.com/open?id=1gBiNgADUNvb9lG2PU7Vvo6lOo2xDIA2o)


[Working Model LINK](https://drive.google.com/open?id=1l8eou6Y9lUO1dVR4ARe1rVMHx4d1nz_U)


## References

#### What Is Kubernetes | Kubernetes Introduction | Kubernetes Tutorial For Beginners | Edureka
https://www.youtube.com/watch?v=F-p_7XaEC84
