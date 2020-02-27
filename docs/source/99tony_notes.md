# Notes

## From MAC - Find Time

Subject: Re: Additional web links from Mac

 

G4G EE Big Data Structures walkthrough: https://bit.ly/2mi5T0q

 

Mac

From: Friedrichs, MacKenzie (Contractor) O
Sent: Wednesday, February 26, 2020 9:18 AM
To: Butzer, Tony (Contractor) <butzer@contractor.usgs.gov>
Cc: Kagone, Stefanie (Contractor) <skagone@contractor.usgs.gov>; Parrish, Gabriel E <gparrish@contractor.usgs.gov>
Subject: Additional web links from Mac

 

Tony - here is an overload of web resources that relate to our discussions in one way or another.

 

https://earthengine.google.com/timelapse/ - One giant global GIF!

https://github.com/openforis/sepal - The ongoing FAO development project harmonizing multiple cloud vendors (AWS, GCP/GEE) at once. (more architecture-diagrams)

https://datasetsearch.research.google.com/  - Newly available general data search warehouse. Try "MODIS NDVI Global".

 

GEE  heavy

https://developers.google.com/earth-engine - all the developer docs, many tutorials, API info, etc. 

https://signup.earthengine.google.com/ - use a gmail account for free access.

https://developers.google.com/earth-engine/datasets - The what's-available-in-GEE library.

EE datasets Tour presenation: http://bit.ly/eecatalog

G4G Presentaions: https://sites.google.com/earthoutreach.org/geoforgood19/agenda/breakout-sessions?authuser=0

 

EE stac-catalog

https://console.cloud.google.com/storage/browser/earthengine-stac/catalog?project=google.com:compact-sunset-791&authuser=0

and

https://gee.stac.cloud/?t=catalogs

 

Advanced time series visualization (python notebooks in Colaboratory, EE focused) + See folium mapping example here: https://colab.research.google.com/drive/1bo0t-Oodq2K68t_v42DoNg8OpvSq_Nr0#scrollTo=DUBNDgqyiPZW

 

 

Mac Friedrichs

Remote Sensing Scientist | Technical Support Services Contract (TSSC)

KBR Contractor to the USGS Earth Resources Observation and Science (EROS) Center 

Office: 605-594-2841 | Email: mfriedrichs@contractor.usgs.gov

## Tactical Todo

1. Finish Web Site Today - the infrastructure
2. work on project charter
	- assumptions and postulates
	- other sections
3. add todos in each section
4. topics and cross training between science and technology

---
## Costs

https://calculator.s3.amazonaws.com/index.html


# Initial Topic Dartboard




### Open Data Cube

### Pangeo

### Collection-2

### Cloud

---
---

### 01-Evaporation-Transpiration-Meets-AWS-Cloud-Stefanie-Kagone-2-11-2020

#### Outline:

#### Quote --

> "We used github; because, well, why wouldn't you!" -- MacKenzie Friedrichs

####  >> Purpose and Mission

####  >> Storage
####  +++ Known Data Lakes

####  >> Compute
####  >> Network
####  >> Open Data Cube
#### PANGEO
####  >> Architecture and Philosophy
####  >> Future - yes I can do Landsat Science on my Phone!
####  ** Jupyter Setups - numerous and growing
#####  ++ Sandboxes Notable
#### Jupyter Notebook and Jupyter Labs
#### What's Next
####  ?? Small Pilots
#### --> Action: CHS authorization for science

---
### Data
#### >> Curating and Optimal Organizing in AWS - us-west-2(Oregon) Region
#### Data Access
####  ++ S3 is like NFS on steriods
####  ++ XARRAYs are a powerful abstraction where customized spatial/temporal/muli-sensor cubes are being constructed
####  +++ Real-time data slicing allows you to just get the pixel and qa data you want NOW!

---
---
---

## Map Reduce Concept

![map reduce](https://clojurebridgelondon.github.io/workshop/images/map-reduce-sandwich.png)

---
---
---

### Can slice data any way we want down to single pixel or pixel rod timeseries

![slicing](https://www.researchgate.net/publication/322660086/figure/fig4/AS:585950480576517@1516712889629/WCS-subsetting-trimming-left-and-slicing-right-Source-OGC.png)

---
---
---

### Xarray - think about the sensor bands as extension dimensions to temp/precip

![xarray](https://miro.medium.com/max/3945/1*oIyi7fqvyjIwEw49XkMFig.png)

---
---

#### Notebook eclectic repo and demo's



---

### Purpose and Mission of OpenDataCube and PANGEO ... Tony

####  >>> Essentially a cloud and data concierge to the Scientist (Role)

#####     +++ Open Data Cube and PANGEO advocate and evangelist!

####  >>> Path-find and demonstrate cloud optimized strategies for easy science exploitation

#### >>> Remove any residual intimidation of <u>cloud terminology or jargen</u>
    
    
![scare](https://raw.githubusercontent.com/tonybutzer/assets/master/funny/cloudscare.png)

#####     +++ Its all the same STUFF - Storage, Compute and Networking

- <u>and you can code it all to start and stop</u>
- use just what you need
- don't forget to turn it off when you don't need it


```
Let me know if you have any questions about:

•	CHS
•	PANGEO
•	OpenDataCube
•	Cloud access
•	Cloud Technologies
•	Getting Started in CHS
•	Jupyter environments (tiny, small, medium, large)
•	Data Lakes – Collection-2 Landsat
•	Metadata handling, searching and exploitation
•	Infrastructure as Code – Devops in cloud environments
•	Cloud costs – howto get free compute and free storage 
```





```python

```

---
---
---

### Storage

### S3  (AWS)

####  ++ Simple
####  ++ Scalable
####  ++ Cost Effective
####  ++ Ubiquitous
####  ++ Direct Access - no damn portal - no need to buy local storage
####  ++ Management of data organization and migration policies is <u>"someone else's problem!" </u>

<u>someone else's problem</u>

### Known Data Lakes

1. C1_L2_Albers_USA --bucket **dev-usgs-landsat** --prefix collection1/**level2/albers/oli-tirs/2018**/046/028/
2. Digital Earth Africa Collection-2(**PROVISIONAL**)
    - produced at EROS using AWS - 4 days of fun
    - C2-Provisional
    - L8 only
    - the whole f-ing continent of Africa
    - likely in US-WEST-2 - Oregon Cloud Region/Space/Data-Centers
    - I should get CHS access to this from GA
    
3. **PUBLIC USGS Collection2** - Kristi Kline and Renee Pieschke -- **"Spring" 2020**
4. Nigera-2018 test data not COG - accessable via CHS and C2-like metadata
5. Earth On AWS - PDS -- Planet/Amazon Hosted Level-1 Landsat 8 data **PUBLIC**
6. **NOT** USARD Tiles - unless heavily coerced!
7. Others 
    - Sentinel
    - NASA DAAC? - Cody Hendricks
    
---
---
---

### What AWS Region?- many dataset/data-lakes are being pilot tested in us-west-2-oregon

### USA Collection-1 - Level-2 - Albers

![dl](https://raw.githubusercontent.com/tonybutzer/assets/master/diagrams/c1l2albers_datalake_almost_indexed.PNG)


---
---
---

### Africa Collection-2 Provisional Test Data
#### Created in the cloud LPGS - in 4 days
### Heat maps below
---
---
### diagrams/africa_scene_depth_heatmap.PNG
![hm1](https://raw.githubusercontent.com/tonybutzer/assets/master/diagrams/africa_scene_depth_heatmap.PNG)

---
---


---

![2](https://raw.githubusercontent.com/tonybutzer/assets/master/diagrams/africa_scenes_heatmap_zoomed.PNG)

---


### Collection-2 Coming Soon!

---
---
---


---
### Jupyter Setups/Sandboxes

#### Ordered by EROS Scientist Relevance

### 1. USGS PANGEO Sandbox
1. Sanctioned and endorsed by USGS Leadership
2. Ubiquitous and least expensive data access to Collection-2
3. Supported by Renee's team; Supported by USGS IT
4. https://pangeo.usgs.gov
5. Need to register as an authenticated user

### 2. Private CHS Sandboxes - Tony etc.
1. Flexible can load other libraries and datbases
2. Can be stood up for a specific class or application path-finding exercise
3. - Not formally sanctioned
4. Intent is to sustain momentum in Jupyter Training

#### Show these
    - http://10.12.68.34/user/butzer/notebooks/notebook/00-Tutorial/00-landsat/Lunch%20and%20Learn%20Day%202.ipynb
    
    - http://localhost:8888/notebooks/opt/notebook/05-Science-Outreach-Evaporation-Etc/10-Sanath/01-Sanath-p045r031-Lake-Isabella.ipynb
    

### 3. PANGEO ESIP Funded
1. https://binder.pangeo.io/   ### **GOOGLE CLOUD PLATFORM**
2. https://aws-uswest2-binder.pangeo.io/  ### *AWS*  **uswest2** - the science watering hole
3. Cool and powerful - **BUT** best effort supported

### 4. Open Data Cube Sponsered by the Aussies
1. https://admin.digitalearth.africa/user/tonybutzer/lab/workspaces/auto-J
2. Collection-2 Dress rehearsal - data available now - but limited to a select few users.
3. The Aussies are by far **the best** at managing scalable **infrastructure** in the cloud
4. Robust, Flexible and **SCALABLE** in many ways
5. show demo of ODC **CLASSROOM** work - coming this summer to EROS - **Important Awareness**
   
#### Show these
    - //21-Open-Data-Cube-Examples-Tutorials/Begginers_guide/04_Plottting.ipynb  **SHOW THIS**
    - 05_deeper_dive_Animate_AOI-Copy1.ipynb


---

### Compute:


#### Click here (middle)

https://aws.amazon.com/ec2/

http://awsconsole.usgs.gov/

#### Aws EC2 instance types; Jargon quick glimpse

- t2.micro -- <u> FREE Tier</u>
- t3a.xlarge

  **EC2** Short for Amazon **Elastic Computer Cloud**, Amazon EC2 is a commercial Web service from Amazon's Web Services (AWS) that lets customers "rent" computing resources from the EC2 cloud. EC2 provides storage, processing, and Web services to customers.

### Scaling

#### +++ Serverless Lambda
#### +++ AWS Batch
#### +++ Kubernetes Orchestration
#### +++ DASK
#### +++ Auto-scaling groups


```python
from IPython.display import YouTubeVideo
YouTubeVideo('RA_2qdipVng')
```





        <iframe
            width="400"
            height="300"
            src="https://www.youtube.com/embed/RA_2qdipVng"
            frameborder="0"
            allowfullscreen
        ></iframe>
        



---
---

### Networking VPCs, subnets/masks, security groups - out of scope
#### Suffice to say - if I am at EROS or on the VPN - I can get to my AWS CHS instance

#### ssh
#### Port 80 and 8080
#### ssh tunnels are interesting :-)

---
---
---


### PANGEO

####  >>> EROS and USGS Scientists should play in ESIP Sandboxes

####  >>> Can run in an <u>HPC</u> - if you are into that kind of setup - I'm talking to you Dr. Crawford.


```python
# https://pangeo.io/architecture.html
```


```python
from IPython.display import IFrame
IFrame('https://pangeo.io/architecture.html', width=900, height=800)
```





        <iframe
            width="900"
            height="800"
            src="https://pangeo.io/architecture.html"
            frameborder="0"
            allowfullscreen
        ></iframe>
        



![arch](https://pangeo.io/_images/pangeo_tech_1.png)


```python

```

---
---
---


### DEMO1 - Africa

![lake](https://i.pinimg.com/originals/8f/b8/90/8fb890f88347fd5b1e3d1ef76cb3b58a.jpg)

#### -- Data Lake = Landsat8 Level 1 -- Sponsored by Planet and Amazon/AWS <u>PUBLIC</u>

#### -- Sandbox = Aussie Digital Earth Africa in AWS us-west-2 - <u>because its the fastest</u>

#### -- AOI = Lake Rumira (Donald Trump Island) - <u> because its small and in africa</u>
    
#### Why

#### +++ Demonstrates the power of ubiquitous cloud data in grabbing an AOI thru time <u>(BIT)</u>

#### +++ Introduces <u>XARRAY</u> in-memory data abstraction -- so <u>powerful a concept</u> - <i>it makes my head hurt.</i>
    

### LINK

https://admin.digitalearth.africa/user/tonybutzer


#### Notes

- use jupyter classic
- run lake rumira
- run the plotting notebook ODC tutorials
- don't forget to show the mashups - **Tony!**

---
---
---
---


### Demo2 - USA - Hayden Island Collection1 - Level2 - Albers

![hayden](https://chatterbox.typepad.com/.a/6a00d8341c86d053ef013486129028970c-600wi)

#### Link
http://localhost:8888/tree?

#### Notes

- need the tunnel from ~/bin/01<TAB>
- http://localhost:8888/notebooks/opt/indexc2/00-notebooks/00-hayden-with-progress.ipynb
- http://localhost:8888/notebooks/opt/indexc2/00-notebooks/10-panda-lake-analyze_C1_L1_Albers_Scenes.ipynb

---
---
---
---


### Notebook github tonybutzer eclectic repo tour

https://github.com/tonybutzer/notebook


#### Notes

- show landsat Nathan's notebook in context
- show Open Data Cube stuff ; maybe kirill's stuff
- simple plots etc
- show this notebook kagone in context


### Open Data Cube Internal Details

### MTL, XML, JSON, YAML -- Oh My!

#### Postgresql - dataset record - detail ds[0].metadata_doc

```
{'id': '00d6a34e-280d-5758-80fd-d62a3f4b9a3a',
 'crs': 'epsg:32637',
 'grids': {'default': {'shape': [7751, 7601],
   'transform': [30.0, 0.0, 71385.0, 0.0, -30.0, 276015.0, 0.0, 0.0, 1.0]}},
 'label': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03',
 'extent': {'lat': {'end': 2.4959339666277263, 'begin': 0.39252900869826096},
  'lon': {'end': 37.19765037393791, 'begin': 35.14743976609986}},
 '$schema': 'https://schemas.opendatacube.org/dataset',
 'lineage': {'source_datasets': {}},
 'product': {'href': 'https://collections.dea.ga.gov.au/product/usgs_ls8c_level2_2',
  'name': 'usgs_ls8c_level2_2'},
 'geometry': {'type': 'Polygon',
  'coordinates': [[[299415.0, 276015.0],
    [71385.0, 276015.0],
    [71385.0, 43485.0],
    [299415.0, 43485.0],
    [299415.0, 276015.0]]]},
 'properties': {'eo:gsd': 30.0,
  'datetime': '2017-12-03T07:48:42.907887',
  'eo:platform': 'landsat-8',
  'odc:producer': 'usgs.gov',
  'eo:instrument': 'OLI_TIRS',
  'eo:cloud_cover': 3.4,
  'eo:sun_azimuth': 136.45877153,
  'landsat:wrs_row': 59,
  'odc:file_format': 'GeoTIFF',
  'odc:region_code': '169059',
  'eo:sun_elevation': 56.69549283,
  'landsat:wrs_path': 169,
  'landsat:station_id': 'LGN',
  'odc:product_family': 'level2',
  'odc:dataset_version': '2.0.20190905',
  'odc:processing_datetime': '2019-09-05T16:15:34',
  'landsat:landsat_scene_id': 'LC81690592017337LGN00',
  'landsat:collection_number': 2,
  'landsat:landsat_product_id': 'LC08_L1TP_169059_20171203_20190905_02_T1',
  'landsat:geometric_rmse_verify': 2.102,
  'landsat:geometric_rmse_model_x': 3.377,
  'landsat:geometric_rmse_model_y': 3.843,
  'landsat:ground_control_points_model': 780,
  'landsat:processing_software_version': 'LPGS_Unknown',
  'landsat:ground_control_points_verify': 200,
  'landsat:ground_control_points_version': 51},
 'accessories': {'checksum:sha1': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03.sha1'},
  'metadata:processor': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03.proc-info.yaml'},
  'metadata:landsat_mtl': {'path': 'LC08_L2SP_169059_20171203_20190905_02_T1_MTL.txt'}},
 'grid_spatial': {'projection': {'valid_data': {'type': 'Polygon',
    'coordinates': [[[299415.0, 276015.0],
      [71385.0, 276015.0],
      [71385.0, 43485.0],
      [299415.0, 43485.0],
      [299415.0, 276015.0]]]},
   'geo_ref_points': {'ll': {'x': 71385.0, 'y': 43485.0},
    'lr': {'x': 299415.0, 'y': 43485.0},
    'ul': {'x': 71385.0, 'y': 276015.0},
    'ur': {'x': 299415.0, 'y': 276015.0}},
   'spatial_reference': 'epsg:32637'}},
 'measurements': {'nir': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b5.tif'},
  'red': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b4.tif'},
  'blue': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b2.tif'},
  'green': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b3.tif'},
  'swir_1': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b6.tif'},
  'swir_2': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b7.tif'},
  'emissivity': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_emissivity.tif'},
  'cloud_distance': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_cloud-distance.tif'},
  'coastal_aerosol': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_sr-b1.tif'},
  'upwell_radiance': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_upwell-radiance.tif'},
  'emissivity_stdev': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_emissivity-stdev.tif'},
  'quality_l1_pixel': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_quality-l1-pixel.tif'},
  'thermal_radiance': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_thermal-radiance.tif'},
  'downwell_radiance': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_downwell-radiance.tif'},
  'quality_l2_aerosol': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_quality-l2-aerosol.tif'},
  'surface_temperature': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_st-b10.tif'},
  'atmospheric_transmittance': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_atmospheric-transmittance.tif'},
  'quality_l2_surface_temperature': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_quality-l2-surface-temperature.tif'},
  'quality_l1_radiometric_saturation': {'path': 'usgs_ls8c_level2_2-0-20190905_169059_2017-12-03_quality-l1-radiometric-saturation.tif'}}}
```


### Javascript Applications

https://apps.sentinel-hub.com/eo-browser/?lat=-2.18965&lng=30.23326&zoom=14&time=2019-07-23&preset=4-NDVI&datasource=Landsat%208%20USGS


https://geotiffjs.github.io/cog-explorer/#long=30.243&lat=-2.199&zoom=12&scene=https://landsat-pds.s3.amazonaws.com/c1/L8/172/062/LC08_L1TP_172062_20150117_20170414_01_T1/index.html&bands=5,6,4&pipeline=sigmoidal(all,50,0.16);gamma(red,1.03);gamma(blue,0.925)


https://maps.digitalearth.africa/#share=s-ahlb4INgL6IZl2ZB6clG1kZ4Y60


### What's Next?

#### Pilot Evapo Project in AWS?
#### Open Data Cube on-site EROS <u>Training </u>
- Visits by NASA CEOS Brian Killough
- Visit by Alex Leith from GA
- merges sentinel and landsat products

#### GeoScience Australia Campus and Remote Dish for Landsat

![pic](https://www.ga.gov.au/__data/assets/image/0018/10287/GA8368.jpg)

---

#### Alice Springs Australia

![dish](https://prd-wret.s3-us-west-2.amazonaws.com/assets/palladium/production/s3fs-public/thumbnails/image/Star%20quilt%20satellites.JPG)

---
---

### Future

- yes you can use a chromebook to do science
- yes you can use your phone - but you may want to chrome cast it and have small thumbs
- **Free compute** for those saving the planet ecosystems and perhaps humans.

#### Followon 

### --- Deep Dives on topics
1. Other demos - the new landsat look
2. Sentinel Hub
3. EOX applications
4. Integration with netcdf tools
5. Integration with QGIS
6. GIMP
7. STAC, COG etc
8. Jupyter Environments
9. Scaling

### --- Outreach to other grass-root scientists

### --- Mitigating the need to tile data as a pre-processing activity - sensitive topic



![wrong](https://imgs.xkcd.com/comics/duty_calls.png)

#### References
https://towardsdatascience.com/handling-netcdf-files-using-xarray-for-absolute-beginners-111a8ab4463f


### Community for Data Integration

https://my.usgs.gov/confluence/display/cdi/CDI+Monthly+Meeting+20200212

Pangeo: A flexible open-source framework for scalable, data-proximate analysis and visualization 
Pangeo provides a complete and flexible framework for data analysis and visualization, with scalable computations next to the data.  The framework uses components already in widespread use in the community:Dask, Xarray, Pandas and Jupyter. The user needs only a web browser locally to interact with the data.   We will give demonstrations of using Pangeo for several different types of USGS workflows, involving large simulation model results and remote sensing applications. 
Rich Signell is a Research Oceanographer at the Coastal and Marine Science Center in Woods Hole.  He has worked with the Integrated Ocean Observing System (IOOS), served on the CF Standards Committee, served on the Unidata Users Committee and is a member of the Pangeo Steering Council.
Renee Pieschke is a Technical Specialist for the Technical Services Support Contract at the Earth Resources Observation and Science Center in Sioux Falls, SD. She has been supporting the Landsat Product Improvements Project, which builds the infrastructure to move and process Landsat data at scale in the CHS AWS Cloud as well as improve access through tools such as Pangeo.



**Pangeo:** A flexible open-source framework for scalable, data-proximate analysis and visualization
Pangeo framework is funded by EarthMAP - situational awareness driven by sensors & models.
New form of model data analysis - nothing installed locally, working on the cloud.
Pangeo is an open community of people trying to build software for science that is community-driven, flexible, and collaborative. Slowly building out set of tools with a common philosophy. GitHub contains all Pangeo-related files.
http://support.chs.usgs.gov/
Click Request New Service
Click "I am interested in using Pangeo."
Test notebooks available here: 
https://code.chs.usgs.gov/earthmap/notebooks 

## Q&A

1. Two way tight coupled atmosphere-Ocean? ie. feedback and convergence at every timestep?
Every few minutes, there is a chance for some elements to affect others.
2. Where can I go to learn more about EarthMAP?
USGS Director's Science Planning Strategy (EarthMap!)
More information rolling out in March
The CHS Help Center article for Pangeo is located at this link https://support.chs.usgs.gov/x/OwA1Ag 
3. Why do you think that the Pangeo instance of community-driven software has been successful? Isn't it hard to get contributors usually?
Ryan Abernathy has championed Pangeo. Started with big ideas and goals, got government people and commercial people on board from the beginning. Approachable and open. Not developing something to try and sell. 
4. I've heard that you can use Pangeo even if you don't work with big data - is that true? why? how?
If you're interested in machine-learning, or using Google Earch engine, Pangeo provides a cloud-agnostic way of doing the same kinds of workflows. 
you mentioned costs are free for moving data within region. Who do we talk to about that type of issue?
Reach out to CHS. report.chs.ugs.gov - request support
EROS will be developing some help documentation for accessing Landsat as we start publicizing data availability from USGS
5. Is there a good start up guide to Pangeo for Matlab users who’re interested in transitioning to some of these python tools? 
Most Matlab users find the Python language structure fairly similar/accessible.  Of course the vocab is different, which is tough.   There are some sites that try to help: https://realpython.com/matlab-vs-python/
Or even better, can these tools be tapped through using Matlab commands via Jupyter notebooks?
Octave, the free version (and reduced functionality version) of Matlab can work with Jupyter.  We would have to enable that capability on pangeo.chs.usgs.gov if there was sufficient interest.
6. What is level 1 vs level 2 processing?
For Landsat, a Level-1 product is a top of atmosphere product, where a Level-2 will apply atmospheric corrections to get closer to surface reflectance for better scientific analysis. For more information on Landsat Collections and Levels, see the Landsat Missions Website.
7. When is the next Pangeo crash course/training available?
Workshop in Flagstaff at the end of February March - 10 spaces left.  Contact ianeece@usgs.gov for details and to sign up (or get on wait list). Will cover Jupyter, DASK, xarray, cloud-optimized storage formats, remote sensing, machine learning. "Test" session to see how well it works. 
The CHS Help Center article for Pangeo is located at this link https://support.chs.usgs.gov/x/OwA1Ag 
8. What happens when we build on this and in the future the costs get passed down to us? Is somebody tracking the costs that are currently paid to plan 4 this?
We are tracking costs that Pangeo will generate; cannot distribute costs down to a user. If the current subsidy goes away, we can work with users to see what the cost would be. Will have to be some investment from investigators/users.
What is a simple explanation of how USGS can use Pangeo?
A common software environment; you can just log in and start using this without downloading anything. Eliminates problems in replicating software environment. Low barrier of entry to try these tools.
9. As ScienceBase moves to a cloud-based platform, that data will be easily accessible through Pangeo.
is the CHS Pangeo public or internal only, meaning if you upload data or create a notebook can someone external access it?
It is tied to your active directory, so you get dedicated space to work on things.
Pangeo Binders is something to explore if you want to share a notebook environment with a team of individuals. Consult CHS for more information about this.
10. can you clarify what is meant by a "cloud optimized geotiff?
Regular geotiffs are read line by line, cloud optimized chunks it into squares and gives you overlays; allows you to get just your area of interest easier than reading line by line. 
For more information, see this medium.com article.
To reproduce research, versioning of the input data would be needed in addition to versioning of the source code. Is this happening?
There's a versioning proposal in STAC that could use more input if you would like to reach out to the STAC community through their gitter chat or through the GitHub issues board.
11. Will Pangeo be independent of the Cloud Service chosen. ie, Google vs Amazon vs Microsoft?
It will need to be stood up on the different cloud infrastructures, but the tools themselves are pretty agnostic. It's all python.
12. Is it fair to think of pangeo as an 'open source' alternative to google earth engine with more analysis capabilities ?
Yes. The data is accessible and reproducible on any cloud.
13. How hard would it be to set up an R environment built on top of the Pangeo stack?
Pangeo is Jupyter, so you can use Jupyter, Python, or R in this deployment.


# Satsearch plus stac-intake plus pangeo Chat
 
 
 
hey do we have a satsearch capability for albers scenes?, by Butzer, Tony (Contractor).
1:43 PM

hey do we have a satsearch capability for albers scenes?
Almost?, by Pieschke, Renee (Contractor) L.
Profile picture of Pieschke, Renee (Contractor) L.
Pieschke, Renee (Contractor) L
1:43 PM

Almost?
Drew put together a page of endpoints, by Pieschke, Renee (Contractor) L.

Drew put together a page of endpoints
Link https://my.usgs.gov/confluence/display/LSAA/LandsatLook+Deployment+Summary , by Pieschke, Renee (Contractor) L.

https://my.usgs.gov/confluence/display/LSAA/LandsatLook+Deployment+Summary
ok - keep me posted - I am playing with ODC in postgres for western US right now, by Butzer, Tony (Contractor).
1:44 PM

ok - keep me posted - I am playing with ODC in postgres for western US right now
and by satsearch, I mean a searchable endpoint, by Pieschke, Renee (Contractor) L.
Profile picture of Pieschke, Renee (Contractor) L.
Pieschke, Renee (Contractor) L
1:44 PM

and by satsearch, I mean a searchable endpoint
but satserach available in pangeo would be better, by Butzer, Tony (Contractor).
1:44 PM

but satserach available in pangeo would be better
Right. That's what I want, too. I just don't know if we're there. That's something to bring up with …, by Pieschke, Renee (Contractor) L.
Profile picture of Pieschke, Renee (Contractor) L.
Pieschke, Renee (Contractor) L
1:44 PM

Right. That's what I want, too. I just don't know if we're there. That's something to bring up with drew next week
pointing at C1L2AlbersScenes as a proxy for Collection-2, by Butzer, Tony (Contractor).
1:45 PM

pointing at C1L2AlbersScenes as a proxy for Collection-2
he asked me if we intended on using sat-api for anything else, by Pieschke, Renee (Contractor) L.
Profile picture of Pieschke, Renee (Contractor) L.
Pieschke, Renee (Contractor) L
1:45 PM

he asked me if we intended on using sat-api for anything else
so we're configuring domains for the endpoint., by Pieschke, Renee (Contractor) L.

so we're configuring domains for the endpoint.
which also depends on the egress monitoring solution/cloudfront/ers to be in place, by Pieschke, Renee (Contractor) L.

which also depends on the egress monitoring solution/cloudfront/ers to be in place
well I someday want to play with stac-intake as well and determine if its usable., by Butzer, Tony (Contractor).
1:45 PM

well I someday want to play with stac-intake as well and determine if its usable.
Yeah. It only works on public buckets, by Pieschke, Renee (Contractor) L.
Profile picture of Pieschke, Renee (Contractor) L.
Pieschke, Renee (Contractor) L
1:46 PM

Yeah. It only works on public buckets
We fought a bit with the developer on it., by Pieschke, Renee (Contractor) L.

We fought a bit with the developer on it.
and gave up, by Pieschke, Renee (Contractor) L.

and gave up
joe hamman?, by Pieschke, Renee (Contractor) L.

joe hamman?
yeah i think alex met him at ml conf., by Butzer, Tony (Contractor).
1:46 PM

yeah i think alex met him at ml conf.
so maybe this is a Collection-2 timeframe thing, by Butzer, Tony (Contractor).

so maybe this is a Collection-2 timeframe thing
Yeah. at least., by Pieschke, Renee (Contractor) L.
Profile picture of Pieschke, Renee (Contractor) L.
Pieschke, Renee (Contractor) L
1:47 PM

Yeah. at least.





 

 



