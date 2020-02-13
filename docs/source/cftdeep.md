# CloudFormation Deep Dive

## EKS - Service

- principle author Sam Congdon


### Repo

https://code.chs.usgs.gov/CHS-IaC/baseline/aws-service-catalog/custom-sc/eks

- It starts with the product template cloudformation/product.template

```
AWSTemplateFormatVersion: "2010-09-09"
Description: Deploys an EKS cluster into an existing VPC
Metadata:
  AWS::CloudFormation::Interface:
    ParameterGroups:
      - Label:
          default: Network Configuration
        Parameters:
          - VPCID
          - WorkerSubnets
          - BastionSubnets
      - Label:
          default: EKS Control Plane Configuration
        Parameters:
          - ClusterName
          - KubernetesVersion
          - ControlPlaneAccess
          - AdditionalEKSAdminArns
          - ProvisionClusterAutoScaler
      - Label:
          default: EKS Node Configuration
        Parameters:
          - NodeInstanceType
          - NumberOfNodes
          - MaxNumberOfNodes
          - NodeGroupName
          - NodeVolumeSize

```

Most of the above makes sense straight away except

- AdditionalEKSAdminArns
- and NodeGroupName


Ingnoring my ignorance and moving on.

This is the product definition template for the managed service

Then this kicks off the eks.yml from here:
- https://orgsbucket.chs.usgs.gov.s3.amazonaws.com/aws-service-catalog/custom-sc/eks/cloudformation/eks.yml

### eks.yml

- you can pick the bastion os - interesting - ubuntu
- dont know what this is 
```
KubeConfigKmsContext:
    Type: String
    Default: "EKSQuickStart"
```

- bastion parameters for instance type and EBS size etc

## Lots of Flippin Resources

so here is my approach

1. identify all of the nested stacks in bringing up EKS

```
[rhassan@ip-10-12-66-180 ~]$ cat stacks.txt
SC-574826924367-pp-bg7mcwyak4qzq
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-IamStack-15HBXYKZ003IG
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-FunctionStack-L21XBGNUOESS
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-EKSControlPlane-UIIHKCK6ORCR6
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-NodeGroupStack-1H9SVUVWXG7ND
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-ClusterAutoScalerStack-31I2WML1DL4D
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-BastionStack-FKQJHZ4KS9GM
SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-NodeGroupStack-1H9SVUVWXG7ND
```

2. now look at a bash for loop to list resources such as
```
for i in `cat stacks.txt`; do echo STACKIS:$i; aws cloudformation describe-stack-resources --stack-name $i; done >resources.txt
```

3. Search for all the Roles Created

```
[rhassan@ip-10-12-66-180 ~]$ grep -i Role resources.txt |grep LogicalResourceId
            "LogicalResourceId": "BastionRole"
            "LogicalResourceId": "CleanupLoadBalancersRole"
            "LogicalResourceId": "CleanupPVRole"
            "LogicalResourceId": "CleanupSecurityGroupDependenciesRole"
            "LogicalResourceId": "ControlPlanePassRole"
            "LogicalResourceId": "ControlPlaneProvisionRole"
            "LogicalResourceId": "ControlPlaneRole"
            "LogicalResourceId": "CopyZipsRole"
            "LogicalResourceId": "KubeConfigUploadRole"
            "LogicalResourceId": "LambdaCleanUpFunctionRole"
            "LogicalResourceId": "NodeInstanceRole"
            "LogicalResourceId": "QuickStartStackMakerRole"
```

4. Now lets look at the BastionRole

```
[rhassan@ip-10-12-66-180 ~]$ grep BastionRole resources.txt
            "PhysicalResourceId": "SC-574826924367-pp-bg7mcwyak4qzq-EKSSt-BastionRole-RX6YQBH7KJOS",
            "LogicalResourceId": "BastionRole"
[rhassan@ip-10-12-66-180 ~]$ aws iam list-role-policies --role-name "SC-574826924367-pp-bg7mcwyak4qzq-EKSSt-BastionRole-RX6YQBH7KJOS"
{
    "PolicyNames": [
        "BastionPolicy",
        "QSBucketAccess"
    ]
}
[rhassan@ip-10-12-66-180 ~]$ aws iam get-role-policy --role-name "SC-574826924367-pp-bg7mcwyak4qzq-EKSSt-BastionRole-RX6YQBH7KJOS" --policy-name BastionPolicy
{
    "RoleName": "SC-574826924367-pp-bg7mcwyak4qzq-EKSSt-BastionRole-RX6YQBH7KJOS",
    "PolicyDocument": {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Action": [
                    "s3:GetObject"
                ],
                "Resource": "arn:aws:s3:::orgsbucket.chs.usgs.gov/aws-service-catalog/custom-sc/eks/*",
                "Effect": "Allow"
            },
            {
                "Action": [
                    "logs:CreateLogStream",
                    "logs:GetLogEvents",
                    "logs:PutLogEvents",
                    "logs:DescribeLogGroups",
                    "logs:DescribeLogStreams",
                    "logs:PutRetentionPolicy",
                    "logs:PutMetricFilter",
                    "logs:CreateLogGroup"
                ],
                "Resource": "arn:aws:logs:us-west-2:574826924367:log-group:SC-574826924367-pp-bg7mcwyak4qzq-EKSStack-6ML8ZRRNJWMY-BastionStack-FKQJHZ4KS9GM-BastionMainLogGroup-5CXQPSWWQG5H:*",
                "Effect": "Allow"
            },
            {
                "Action": [
                    "ec2:AssociateAddress",
                    "ec2:DescribeAddresses"
                ],
                "Resource": "*",
                "Effect": "Allow"
            }
        ]
    },
    "PolicyName": "BastionPolicy"
}
```

