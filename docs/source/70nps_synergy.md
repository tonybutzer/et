# National Parks Service Synergy

[annual maps NPS awesome Click HERE:](https://npwbanalres.s3-us-west-2.amazonaws.com/annual_static_norm.html)


### The Big Vision EarthMAP

EarthMap

How will we get there?

To fully achieve EarthMAP, the USGS must deliberately and systematically integrate its multidisciplinary expertise in Earth-system characterization science and its rich data sets with **emerging technologies, advanced predictive models, and collaborative partnerships**. We must also make strategic investments to modernize how we *manage our data and science*. We will need to invest in our facilities and our workforce. We must recruit more staff with expertise in analyzing large, complex data sets and employing state-of-the-art technologies such as machine learning and artificial intelligence to analyze them.

Building a fully operational EarthMAP system by 2030 will require significant commitment by and contributions from the entire USGS family, working with our many partners. Gary Rowe EarthMAP Program Manager


## Concept
1. run ET in the AWS Cloud - input data in S3 Buckets
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

- [https://github.com/tonybutzer/npset](https://github.com/tonybutzer/npset)
- [https://github.com/tonybutzer/et](https://github.com/tonybutzer/et)
- [https://github.com/skagone/cloud-veg-et](https://github.com/skagone/cloud-veg-et)


## Project Engineering Notebook

[http://44.226.205.97/70nps_synergy.html](http://44.226.205.97/70nps_synergy.html)



## Pilot AOI
1. Delaware River Basin


## General Collaboration outside USGS

    Yeah. Sophia Liu from Headquarters has the title of innovation specialist.
    She'd be a major champion for this type of work.


	[10:49 AM] Pieschke, Renee (Contractor) L
    Yep. Just connected another one.
    Jim Kreft from Water Science wants a way to get people outside of USGS into CHS.
    I told him to talk to Rich.
    I think Jim is Wisconsin-based?
    if not HQ
    I met him in DC




## Collaboration Communication Plan

1. weekly telecons
2. shared github repo
3. aws cloud sandboxes
	- CHS - cloud hosting solution
	- github and chs github
	- esip pangeo
	- GeoscienceAustralia Sandboxes
	- miniPangeo

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

## Input Parameters and Input Data Discussions

```
Now to look at the parameter setup part of the code.

if web == False:

years = [1980,1981,1982,1983]

input_data_path = '/media/mt/0CED00122A266FA8/daymet_wb/'

output_data_path = '/media/mt/0CED00122A266FA8/daymet_wb/'


else:

years = list(range(first_year,last_year+1))

input_data_path = '/home/wbdata/'

output_data_path = '/home/results/'


output_params = ['PET','AET','Deficit','rain','runoff','agdd','soil_water','accumswe']

output_units = {'PET':'mm','AET':'mm','Deficit':'mm','accumswe':'mm','melt':'mm','days_snow':'mm','rain':'mm','water_input_to_soil':'mm','runoff':'mm','agdd':'C','accum_precip':'mm'}



### numpy loading of variables
elevation = np.load(input_data_path + 'etopo1_aligned_array.npy') # In meters

heat_load = np.load(input_data_path + 'heat_load_based_on_etopo1.npy')
soil_whc = get_soil_whc()

soil_water = np.copy(soil_whc) # Initialize soil values at full.

intercept_file = np.load('intercept1_from_senay.npz') # Vegetation intercept layer from Gabriel Senay et al. pers. comm.

Igrid = intercept_file['intercept']

snow_thresh_file = np.load('jennings_t50_coefficients.npz')


def calc_aet_and_runoff_and_soilw(): # soil_water and associated vars are 2D arrays
ndvi_name = 'ndvi' + namefixlen(day_index+1) + '.npy.npz'

ndvi_array = np.load(ndvi_name)

ndviF = ndvi_array['ndvi']


air_temperature?

Snow

Actuals versus model estimates.

```



### Visualizing the Input Data - the clay in our fingers

1. Modis NDVI
	- Day 1
	- Day 200

![modis ndvi](https://github.com/tonybutzer/assets/blob/master/et/modis-ndvi-day1-day200.png?raw=true)

2. Air Temperature
	- Day 1

![air temp](https://raw.githubusercontent.com/tonybutzer/assets/master/et/air_temp_day_1.PNG)

2. Precipitation
	- Sioux Falls for 2016 from an xarray

![sioux falls rain](https://raw.githubusercontent.com/tonybutzer/assets/master/et/precipitation_sioux_falls_by_way_xarray.PNG)
