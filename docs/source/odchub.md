# ODC Hub CHS

1. butzer-odc-hub1

## Steps

1. iac chs-odc-hub1
2. bootstrap.py
3. setup libraries via root account == ubuntu
4. add users via admin console tljh
5. test a given user via notebooks
6. organize the lunch training notebook dirs
7. document user startup experience (cd code ; make git)
8. play with notebooks

### IAC

### Bootstrap

1. cd /opt/jup/juphub/pkg
	- make
	- make shared

### Setup libraries

1. cp -r /opt/jup/juphub/pkg/files /home/jupyter-ubuntu   # admin home
2. cd files
	- make lunch-library
	- make notebook-library


### Test notebooks


