# Data

## Current Input data to the VegET model

## Detailed Input Description from Steffi

### Precipitation
___

**Gridmet precipitation**  
<br> gridMET is a dataset of daily high-spatial resolution (~4-km, 1/24th degree) surface meteorological data covering the contiguous US from 1979-yesterday.
+ http://www.climatologylab.org/gridmet.html
+ The format is in netcdf4 format and is updated daily with a 4-5 day delay.







### Potential ET
___

**Gridmet potential ET (PET)** 
<br> gridMET is a dataset of daily high-spatial resolution (~4-km, 1/24th degree) surface meteorological data covering the contiguous US from 1979-yesterday.
+ http://www.climatologylab.org/gridmet.html
+ The format is in netcdf4 format and is updated daily with a 4-5 day delay.



### Average air temperature
___

**Worldmet temperature** --> Daymet data for North America
<br> The Daymet dataset provides gridded estimates of daily weather parameters. Seven surface weather parameters are available at a daily time step, 1 km x 1 km spatial resolution, with a North American spatial extent. Access to the Daymet dataset is available from the ORNL DAAC through a variety of tools and formats allowing a rich resource of daily surface meteorology.
Daymet is supported by NASA through the Earth Science Data and Information System(ESDIS).
+ https://daymet.ornl.gov/
+ The data is updated once a year at the beginning of the calendar year.
+ netCDF file format that follow netCDF Climate and Forecast (CF) Metadata conventions


**Future use - Gridmet air temperature** 
<br> gridMET is a dataset of daily high-spatial resolution (~4-km, 1/24th degree) surface meteorological data covering the contiguous US from 1979-yesterday.
+ http://www.climatologylab.org/gridmet.html
+ The format is in netcdf4 format and is updated daily.


### NDVI - Normalized Difference Vegetation Index
___

**MODIS product MOD13Q1 - 1km**
<br> The MOD13Q1 Version 6 product provides Vegetation Index (VI) values at a per pixel basis at 250 meter (m) spatial resolution. There are two primary vegetation layers. The first is the Normalized Difference Vegetation Index (NDVI), which is referred to as the continuity index to the existing National Oceanic and Atmospheric Administration-Advanced Very High Resolution Radiometer (NOAA-AVHRR) derived NDVI.https://lpdaac.usgs.gov/products/mod13q1v006/
+ https://e4ftl01.cr.usgs.gov/MOLT/MOD13Q1.006/ what is the NASA Land Processes Distributed Active Archive Center (LP DAAC) Distribution Server hosted at the USGS Earth Resources Observation and Science (EROS) Center.
+ the format is hdf
+ the data is updated every 8-days, 2-5 days after an eight day period is completed
<br> Alternative is NDVI at 1km scale (https://lpdaac.usgs.gov/products/mod13a2v006/). The same properties apply.


**Possible Landsat 8 for NDVI calculation on the fly?**



### Soil Properties
___

**SoilGrids**
SoilGrids is a system for global digital soil mapping that uses state-of-the-art machine learning methods to map the spatial distribution of soil properties across the globe.
+ https://www.isric.org/explore/soilgrids
+ Those are static datasets for the globe


**U.S. soil data (gNATSGO)**
<br> The gridded National Soil Survey Geographic Database (gNATSGO) is a USDA-NRCS Soil & Plant Science Division (SPSD) composite database that provides complete coverage of the best available soils information for all areas of the United States and Island Territories. It was created by combining data from the Soil Survey Geographic Database (SSURGO), State Soil Geographic Database (STATSGO2), and Raster Soil Survey Databases (RSS) into a single seamless ESRI file geodatabase. The gNATSGO database contains a 10-meter raster of the soil map units and 70 related tables of soil properties and interpretations. It is designed to work with the SPSD gSSURGO ArcTools. Users can create full coverage thematic maps and grids of soil properties and interpretations for large geographic areas, such as the extent of a State or the conterminous United States.
https://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/geo/?cid=NRCSEPRD1464625
+ the data is in a file geodatabase originally
+ processing required to get the data needed - output are geotiff files



### Data on AWS

#### Available data on AWS
+ Landsat 8  -  NDVI calculation? not ideal(yet)
+ NEXRAD precipitation  -  its daily data, updated daily. We have a python script running downloading NEXRAD data everyday
+ GOES 16 and 17  - 
+ NASA NEX - includes MOD13Q1(250m)
+ MODIS MYD13A1, MOD13A1, MYD11A1, MOD11A1, MCD43A4  -  NDVI 500m
+ ECMWF ERA5 Reanalysis - possible air temperature source?  https://github.com/planet-os/notebooks/blob/master/aws/era5-pds.md

#### Missing data on AWS

+ potential ET data
<br> We could use our own creation of climatology dataset!!
<br> ETo dataset, daily 1984-2017 - 366 files = 1.23 GB

+ air temperature
<br> air temp to be discussed

+ soil data



## Questions

1. Landsat data is the big gorilla in the room.
	- Collection-2 is relevant?
		- Which Bands?
			- Surface Temperature?
			- Surface Reflectance?
			- Aerosols?
	- ANSWER - Not yet except for some possible animations for show of AOI
	- LATER - ET will explore bands in Collection-2 in a merged ET product - SSEBop and VegET and Landsat - TBD
2. 

## Assumptions

1. Direct access to data in object buckets is useful
2. Xarray abstractions will provide the right slicing methods to leverage the ET time series information
3. Spelling is not important in this website :-)
4. 

