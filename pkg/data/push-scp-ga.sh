#! /bin/bash

echo hi tony

ip=44.226.205.97
path='/home/butzer/work/00-et-source-data-from-stefanie'
cred='~/.ssh/bucketlauncher2-keypair.pem'

ls ${path}

date
scp -rvi ${cred} $path/$1 ubuntu@${ip}:.
date


