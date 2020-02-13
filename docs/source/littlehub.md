# Little Hub

## Bootstrap - Its that easy

1. cd /opt/jup/juphub/pkg

    make
    make shared

2. the user ubuntu becomes the admin - set password as ubuntu


  This runs bootstrap.py

```
Setting up TLJH installer...
```


## Adding Users

Control Panel -> Admin -> Add Users

## Services

1. traefik
2. jupyterhub

```
systemctl status jupyterhub

systemctl status traefik

journalctl -u  traefik
```
- traefik access logs a topic for another day
	- sudo view /opt/tljh/state/traefik.toml


## References
[https://tljh.jupyter.org/en/latest/install/amazon.html](https://tljh.jupyter.org/en/latest/install/amazon.html)

## Goals

1. Setup an easy repeatable environment that supports notebooks

## Why

1. Lower bug footprint - failure foot print
2. Simplify
3. Meets the product manager requirement
4. Meets staffing core competancies
5. Usefull for Science Pangeo 101 Workshop - Jupyter 101 Workshop
6. Easy to maintain and add code
7. Delegates kubernetes to the experts
8. Just works
9. Likely allows focus on customized containers
10. Easy to manage people, containers, resources
11. Easier to monitor

## Steps/WBS

1. Read the docs - The Littlest JupyterHub
1. IAC - terrform - little-hub
2. Determine Instance Type and EBS Size
	- 2x c4.xlarge
	- 100Gig
3. This will be ephemeral - so github strategy
4. No DASK -- YET!
5. Explore Linux Resource Monitoring
6. Explore Docker - deeper

## References

**http://tljh.jupyter.org/en/latest/index.html**


## IAC - littlehub

1. Create a directory in juphub repo for littlehub
2. Sizing the Instance
3. Write the terraform code in iac repo
4. Start the ubuntu 18.08 Server
5. NEXT

### Sizing

**http://tljh.jupyter.org/en/latest/howto/admin/resource-estimation.html**

**Memory**

Maximum memory allowed per user

Depending on what kind of work your users are doing, they will use different amounts of memory. The easiest way to determine this is to run through a typical user workflow yourself, and measure how much memory is used. You can use Check your memory usage to determine how much memory your user is using.


*Resizing your server*

Lots of cloud providers let your dynamically resize your server if you need it to be larger or smaller. Usually this requires a restart of the whole server - active users will be logged out, but otherwise usually nothing bad happens.


- Test Hanoi Notebook - study pipeline - mem and disk usage with Docker and Linux-Hobbit?

- RecommendedMemory=(Maxconcurrentusers×Maxmemperuser)+128MB


#### Instance Perspective 

1. How Much does 2 c4-xlarge cost 
2. How much does a 1 C8-xlarge cost?


```
c5.2xlarge 	8 	34 	16 GiB 	EBS Only 	$0.424 per Hour
```

```
	cost per hour	hours per day	days per month 	cost per month
c5.2xlarge	$0.42	24	30	$305.28
```

#### Tables now work well - Thanks Tony

| intance-type | cost per hour |  hours per day | days per month |cost per month|
| ------------ | ------------- |  ------------- | -------------- |--------------|
| c5.2xlarge| 	$0.42	| 24	| 30| 	$305.28


Right aligned columns

| Option | Description |
| ------:| -----------:|
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |


## Install Jupyter Hub

## Configure Jupyter Hub

**http://tljh.jupyter.org/en/latest/install/amazon.html**

1. https - Bill Howe - cert - delegate to Rizbi
2. Add users shared password and whitelist - more on authentication later - See Sam's SAML
