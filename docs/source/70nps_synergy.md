# National Parks Service Synergy

## Concept
1. run ET in the AWS Cloud
2. Some failed experiments with Google Earth Engine - and other drivers for AWS
3. Mission driven initiative from EarthMAP USGS 2030
4. Senay 
	- desire to make a scalable operational capability
	- desire to test multiple cloud/HPC in a hybrid approach
	- extend input data someday to include Landsat Collection-2 Cloud Data Lake
	- Synchronize his team around more efficient work flows - less data wrangling, more science
	- Encourage sharing in and outside of the EROS data center via a common infrastructure and science tools framework

## Timeframe

0. August
1. We want to showcase ET in the cloud/AWS at the OpenDataCube USA Forum 2020 @ EROS
2. You folks are invited to attend


## Project Initiation MOU

1. agreement to collaborate on this useful pilot project for USGS Pangeo


## Github Repos

npset is National Park Service code.

et is mostly project startup and DevOps stuff

https://github.com/tonybutzer/npset
https://github.com/tonybutzer/et
https://github.com/skagone/cloud-veg-et


## Project Engineering Notebook

[http://44.226.205.97/70nps_synergy.html](http://44.226.205.97/70nps_synergy.html)



## Pilot AOI
1. Delaware River Basin




## Collaboration Communication Plan

1. weekly telecons
2. shared github repo
3. aws cloud sandboxes

## Philosophy Approach

1. OpenSource
2. AWS
3. Shared Input Data Lakes

## Verify Data Inputs

1. air_temperature
2. Modis 16 Day NDVI
3. Soils

## Parks Service Data Inputs
1. can you put them into the cloud S3 ?

### Data Storage Model

1. local filesystem EBS versus Cloud buckets


### Compute Scaling Model

1. EC2 optimization cost and size
2. scaling pools python
3. Other Docker based scaling and orchestration methods - K8s and Batch and swarm etc ....

### Discuss Snow Cover Estimates versus Aux Data


### Code structure and some simple refactoring

**Initial Cut**

model.py --> library via simple pip install 

main_calling_function.py

more to come ...


### Jupyter Notebooks for shared science

1. Do you want access from the NPS to our notebooks and the miniPangeo sandbox Lab?


### General Sharing

1. share data inputs - cloud based data lakes and assets


### Shared Science Open Source Efforts


### The Xarray Abstraction

use for inputs, model and outputs - potentially

create NetCDF output products


### Visualizing the Input Data - the clay in our fingers

1. Modis NDVI
	- Day 1
	- Day 200

![modis ndvi](https://github.com/tonybutzer/assets/blob/master/et/modis-ndvi-day1-day200.png?raw=true)
