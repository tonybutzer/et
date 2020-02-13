# Kubernetes Labs

## Favorite References

1. Kubernetes - Services Explained
	- https://www.youtube.com/watch?v=5lzUpDtmWgM

- https://esip.pangeo.io/user/tonybutzer/lab?
- https://github.com/pangeo-data/pangeo-cloud-federation
- https://github.com/frontiersi/datacube-jupyterhub-kubernetes
- https://zero-to-jupyterhub.readthedocs.io/en/latest/
- https://kubernetes.io/docs/reference/kubectl/cheatsheet/
- https://gardener.cloud/050-tutorials/content/howto/ssh-into-node/

## 1. Setting Up an EKS Cluster
### Using a CHS Hosted Service
#### Running the Template
1. Study the repo here:
	- https://code.chs.usgs.gov/CHS-IaC/baseline/aws-service-catalog/custom-sc/eks
	- https://code.chs.usgs.gov/CHS-IaC/baseline/aws-service-catalog/custom-sc/eks/blob/master/README.md
	- 30 Minutes to spin up - maybe even a little longer
	- *Attention* --> read the section on CHS private IP space plus service modifications to instruct the loadBalancer to use private IP spaces.

2. AWS Console deploy stack
	- awsconole CHS
		- search for products - click Products upper left - find EKS
		- LAUNCH PRODUCT - Orange Button
			- name the product
			- select VPCs
			- name the cluster
			- Consider public control plane access?
			- Auto Scaling
			- Instance Types
			- Number of persistent nodes
			- Max number of nodes to autoscale too 
			- Node EBS size - default 20 MB

### Future Wish List Items
1. EFS or other external volume mapping
2. Custom JupyterNotebook Containers or a radio button pick list like Pangeo['ESIP']

## 2. Accessing the k8s cluster

1. Bastion Host
	- allowing ssh via pub key and security group
2. k8s Dashboard
	- https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/#deploying-the-dashboard-ui

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta4/aio/deploy/recommended.yaml

kubectl proxy

```

Kubectl will make Dashboard available at http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/.

### Tunneling ssh

```
ip=10.12.68.198
ssh -L 8001:localhost:8001 ec2-user@$ip
```

### Token Token Who's got the token

```
kubectl create serviceaccount cluster-admin-dashboard-sa

kubectl create clusterrolebinding cluster-admin-dashboard-sa \
  --clusterrole=cluster-admin \
  --serviceaccount=default:cluster-admin-dashboard-sa


kubectl get secret | grep cluster-admin-dashboard-sa

kubectl describe secret cluster-admin-dashboard-sa-token-6xm8l
```


## 2. Services

Kubernetes - Services Explained -- https://www.youtube.com/watch?v=5lzUpDtmWgM

![image](https://raw.githubusercontent.com/tonybutzer/assets/master/juphub/node-port-diag.PNG)

## 1. EC2 + Docker Based Setup

- document here:

## 2. Install Kubernetes with Minikube

## 2a. Install with MicroK8s and snap instead - in an AWS instance
https://towardsdatascience.com/key-kubernetes-commands-741fe61fde8

## 3. Install Kubernetes in GA Cloud with kops

## 4. Run a 3-tier application using Helm

1. test Kompose to convert docker-compose to kubernetes
2. follow a tutorial
3. document the various ways to start and stop deployments/services

## 5. Run jupyter Notebooks using Helm


## 6. Zero to JupyterHub - using microk8s

https://buildmedia.readthedocs.org/media/pdf/zero-to-jupyterhub/v0.4-doc/zero-to-jupyterhub.pdf

1. helm version

1. Install Helm
    
```bash
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash

helm init

helm version
```

2. config helm config file for JupyterHub - (YAML)




