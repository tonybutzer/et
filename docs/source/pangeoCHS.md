# PANGEO JupyterHUB in CHS 

## Howto

### Repos

**READ the README(s) PLEASE**

https://code.chs.usgs.gov/CHS-IaC/baseline/aws-service-catalog/custom-sc/eks

- You need the outputs from the eks stack to run the one below - 
**YOU NEED THE OUTPUTS**

https://code.chs.usgs.gov/pangeo/pangeo-eks


### Product Deployment EKS

1. Step 1
- awsconsole
	- Service Catalog
		- Products List ## TOP LEFT
			- EKS
				((LAUNCH PRODUCT)

2. Configure

- Name*  *Provisioned product-Name = EKS-product-tonybutzer
	- (NEXT) - 
- vpc = csr-vpc=dev-internal
	- Worker Subnets [A, B] 
	- Bastion Subnets [A, B] 
- Cluster Name = EKS-Pangeo-tonybutzer
- Enable K8s Cluster Autoscaling = v-Enabled-v
- Nodes Instance Type = c4-xlarge
- Max number of Nodes = 10
	- (NEXT)

3. Tags
- Project LPIP
- Owner tonybutzer@gmail.com

4. Notifications - {SKIP}

5. (LAUNCH)

6. ( Find Stackid ) click
- EXAMPLE = 'SC-574826924367-pp-bg7mcwyak4qzq'
	- lots of nesting -- Deploys an EKS cluster into an existing VPC
		- Deploys IAM roles and policies required for the AWS EKS Service Catalog Product
		- Deploys Lambda functions required for the AWS EKS Service Catalog Product
		- Deploys the EKS control plane
		- Deploys EKS nodes into an existing VPC
		- Deploys the Bastion Host for the AWS EKS Service Catalog Product
		- Deploys the auto-scaler helm chart into an existing kubernetes cluster


7. Be Patient - takes 30 minutes - there is a bunch of steps in building an EKS Stack

## Verify

### Bastion

- awsconsole
	- system manager
		- session manager
			- (START SESSION)
				- BASTION-xyxzzzzzzzzz-etc

- sudo bash
	- kubectl get nodes


- awsconsole
	- EC2 - Running Instances
		- filter by EKS


#### Development Bastion

1. add security groups for ssh and web
2. add public key to ec2-user
3. clone the repo juphub
4. work on automated verification steps

### Dashboard -see notes


## Start Pangeo Cloudformation/Helm

### REPO
https://code.chs.usgs.gov/pangeo/pangeo-eks

## Howto Steps

1. clone the repo on my laptop
	- git clone https://code.chs.usgs.gov/pangeo/pangeo-eks.git

2. Find the ouputs from the EKS install CFT
- awsconsole
	- CloudFormation
		- Stacks
			- EKS Parent - example: 'SC-574826924367-pp-bg7mcwyak4qzq'
				- <Outputs> <TAB>

```
EKSClusterName	EKS-EQ6ICOkjwCFa	-	-
HelmLambdaArn	arn:aws:lambda:us-west-2:574826924367:function:SC-574826924367-pp-bg7mcwyak4qzq-EKSSta-HelmLambda-O7IOS85XUQ5U	-	-
KubeConfigKmsContext	EKSQuickStart	-	-
KubeConfigPath	s3://sc-574826924367-pp-bg7mcwyak4qzq-kubeconfigbucket-15edi0wadbcmq/.kube/config.enc	-	-
KubeManifestLambdaArn	arn:aws:lambda:us-west-2:574826924367:function:SC-574826924367-pp-bg7mcwyak4qz-KubeManifestLambda-194UGF404QYDP	-	-

```

### These are the ones

```
HelmLambdaArn	arn:aws:lambda:us-west-2:574826924367:function:SC-574826924367-pp-bg7mcwyak4qzq-EKSSta-HelmLambda-O7IOS85XUQ5U	-	-
KubeConfigKmsContext	EKSQuickStart	-	-
KubeConfigPath	s3://sc-574826924367-pp-bg7mcwyak4qzq-kubeconfigbucket-15edi0wadbcmq/.kube/config.enc	-	-

```

3. Run the CFT
- awsconsole
	- cloudformations
		- (Create stack)
			- Upload a template file
				- [Choose file] [box]
					- ~/opt/pangeo-eks/cloudformation/pangeo-helm.yml


	

4. Whats My JupyterHub URL?

- ssh bastion
- kubectl get po -n pangeo

```
kubectl get svc -n pangeo |grep internal| awk '{print $4}'

internal-a5a161badde4011e99ba0061db33343d-1702441004.us-west-2.elb.amazonaws.com
```


## Shutting EKS/Pangeo down

### Stacks - Cloudformation

#### Shutdown Pangeo First

- awsconsole
- cloudformation
- Stacks
- eks-pangeo-jupyter-tonybutzer-2019-09-23 (example)
- Delete (BUTTON)(Delete)


#### Now Shutdown the EKS Autoscaling K8s Stack
- awsconsole
- cloudformation
- Stacks
- SC-574826924367-pp-bg7mcwyak4qzq 
	- (Description: Deploys an EKS cluster into an existing VPC)
- Delete (BUTTON)(Delete)

