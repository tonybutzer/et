# Book Notes

At its core, Kubernetes is a container scheduler, but it is a much richer and fully featured toolkit that has many other features.


- self-healing
- service-discovery
- scaling
- deployment orchetration - roll out - roll back
- Storage Managment - EBS and NFS/EFS
- Cluster optimation - load balancing
- Batch Workloads

## Docker Containers

- chroot jails - for sandboxing
- cgroups - control groups
	- resources can be controled by group limits
	- allow priorities 
	- snapshot the state of running processed
- Namespaces
	- isolate processes and permissions within the namespace
	- users can exist in only this namespace
	- PIDs can be confined 
	- Network - private network resources address, routing table, firewall

### Container Engines
- Docker
- rkt

simplify the user abstraction for managing cgroups and namespaces

Kubernetes is a scheduler - a sophisticated one

control loop - compares current state to desired state


- imperative tools - like ansible
- vs. declarative k8s

- you are the architect - plans
- kubernetes becomes the builder - carrying ou the plan


## K8s lexicon

- pod - group of linked containers - whales/pea pods
	- own ip address

https://github.com/PacktPublishing/Kubernetes-on-AWS.


- replica set - a resource that templates ths creation of pods


Creating a Deployment using YAML

Finally, we’re down to creating the actual Deployment.  Before we do that, though, it’s worth understanding what it is we’re actually doing.

K8s, remember, manages container-based resources. In the case of a Deployment, you’re creating a set of resources to be managed. For example, where we created a single instance of the Pod in the previous example, we might create a Deployment to tell Kubernetes to manage a set of replicas of that Pod — literally, a ReplicaSet — to make sure that a certain number of them are always available.  So we might start our Deployment definition like this:


