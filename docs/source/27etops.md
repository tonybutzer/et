# ET OPERATIONS etops

## docker and docker logs

- see github repo 
	- https://github.com/tonybutzer/etops/tree/master/grid_veget_c

- look at Dockerfile
- look at gridmeister.py
- look at *.sh

- bash cmd_...


## CHS and CHS Processes

### Process recap of requestor pays

- bucket = dev-et-data
- chat = rich signell and sam congden
- fyi chs customer user group


## CHS Processes

### The Board CAB

### CAB Request Process
https://support.chs.usgs.gov/display/CHSKB/CAB+-+Custom+Infrastructure+Request

#### Synopsys

- RFC - request for change
	- developers do not have root permissions
	- so they request admins to change AWS on their behalf
	- CHS use CloudFormation Templates (CFTs)

- Step by Step Guide
	- our account = LSDS - our EC2 Role = lsds-developer-ec2 # IAM Role
	- create a new branch for your cft change - more info needed
	- make changes and sumbit a commit
	- push branch to repository
	- create a merge request
	- include brief description
	- create a change request 
		- https://taskmgr.chs.usgs.gov/servicedesk/customer/portal/9
		- submit AN rfc HERE

- Resources
	- https://code.chs.usgs.gov/chs-library


- Review process
	- in by friday - reviewed by the next Tuesday
	- notification of completed RFCs
	- Classes
		- Standard
		- Normal
			- changes security posture
	- CHS Operations completes Change
	- Customer/user validates the operation works
	- Closed
	- modifications use a CRQ-# - what?
	- logged, documented and reviewed by all developer groups.

### CHS Example lsds-s3-dev-et-data

#### Commit
https://code.chs.usgs.gov/CHS-Custom-Infrastructure/LSDSDPAS/LSDSDPAS/-/commit/981fe8bdf093fd6345bf0ad0854867a311a11eb4

#### gitlab repo
https://code.chs.usgs.gov/CHS-Custom-Infrastructure/LSDSDPAS/LSDSDPAS/-/tree/development

#### CFT
https://code.chs.usgs.gov/CHS-Custom-Infrastructure/LSDSDPAS/LSDSDPAS/-/blob/development/S3/Templates/lsds-s3-dev-et-data.yml

### Pangeo Process
https://code.chs.usgs.gov/usgs-chs/CHS-IaC/baseline/managed-services/pangeo/pangeo-image/-/blob/master/pangeo-notebook/packages.txt

#### Need to understand the gitlab structure

- code.chs.usgs.gov
	- usge-chs
	- CHS-IaC baseline
		- managed-services/pangeo


### Special IAM Users

An AWS Identity and Access Management (IAM) user is an entity that you create in AWS to represent the person or application that uses it to interact with AWS. A user in AWS consists of a name and credentials. An IAM user with administrator permissions is not the same thing as the AWS account root user.


## bucket

### bucket data moving

### getting data from dev-et-data to the netapp

- powershell
	- net use
	- net use w: \\igskmncnfs016\watersmartfs1

- mkdir
	- mkdir w:/Projects/Cloud_Veg_ET/fromtony/tiles/tile40N-90E_chip40N-82E


#### Using FileZilla

#### Using Pycharm

- Prerequisite
	- Mount S3 as /opt/et_data

### Mounting S3

- s3fs.sh

```
#! /bin/bash
REGION=us-west-2

sudo s3fs -o allow_other -o iam_role="lsds-developer-ec2" \
-o use_cache=/tmp \
-o url="https://s3-$REGION.amazonaws.com" \
-o umask=0227,uid=1000 \
-o nonempty     \
        dev-et-data /opt/et_data


# some debug options
# -o dbglevel=info -f \
# -o curldbg \
```

### Pycharm Code for ssh and for sftp

- import fsspec
- import paramiko


#### Code example select file pattern download

- Pycharm on windows with modules installed
	- tip install without the VPN

```
import fsspec
import paramiko

ip='10.12.69.21'
port=22
username='ubuntu'
password='etrocks'

dst = 'w:/Projects/Cloud_Veg_ET/fromtony/tiles/tile40N-90E_chip40N-82E/'

src = 'dev-et-data/tiles/tile40N-90E_chip40N-82E/'

fs_src = '/opt/et_data/tiles/tile40N-90E_chip40N-82E/'

cmd='aws s3 ls ' + src

ssh=paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(ip,port,username,password)

stdin,stdout,stderr=ssh.exec_command(cmd)
outlines=stdout.readlines()

for i in range(0,len(outlines)+1, 100):
    print(outlines[i])
print ('this many lines in a steffi dir',len(outlines))

fs = fsspec.filesystem('sftp', host=ip, username=username, password=password)
#mylist = fs.ls(fs_src)
#print(mylist)

file = outlines[0].split()[-1]
from_file = fs_src + file
to_file = dst + file
print(from_file, to_file)
#fs.get(from_file, to_file)

my_dd_list=[]
for i in range(0,len(outlines)):
    file = outlines[i].split()[-1]
    if file.startswith('etasw_'):
        my_dd_list.append(file)

print('dd num of files is ', len(my_dd_list))

import time

for file in my_dd_list:
    from_file = fs_src + file
    to_file = dst + file
    print(from_file, to_file)
    t1 = time.time()
    fs.get(from_file, to_file)
    t2 = time.time()
    print('file {} took {} seconds - TOO LONG!'.format(file, t2-t1))


```

