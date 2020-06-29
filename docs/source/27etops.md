# ET OPERATIONS etops

## docker and docker logs

- see github repo 
	- https://github.com/tonybutzer/etops/tree/master/grid_veget_c

- look at Dockerfile
- look at gridmeister.py
- look at *.sh

- bash cmd_...


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

