# SCRUM - running

## WIP

### Goals Week Ending 5/29/2020

1. get 40N-80E model running
	- time it 
	- resource usage evaluation
		- memory
		- cpu
		- disk - not so much
2. Code simplification - dumb it down for Tony
3. Next week run in parallel
4. Soil data and other data incremental improvements
5. Train tony on the alg and numpy wrangling


### Week Ending 5/22/2020

**Another Productive Week for team veg_et_2020**

1. Olena, Steffi and Gabe corrected math errors in the cloud code and the model output is a direct match to the windows/ARC model. This is fantastic!

2. We have the next iteration of data inputs pushed to the cloud.

```
ubuntu@ip-10-12-68-72:~$ aws s3 ls dev-et-data/NA_data_for_cloud/
                           PRE ETo_mosaic/
                           PRE NDVI/
                           PRE Precipitation_withHawaiiPuertoRico/
                           PRE Soil/
                           PRE Temperature/
2020-05-22 17:33:48  364931586 global_water_mask_inland.tif
```

3. Olena was nominated for the prestigious ET Data Wrangler of the Year Award.

4. We plan to run the model on a couple of tiles to define the scaling computer types by base-lining time to run; cpu usage; and memory usage.

5. We are targeting September Milestone for all of North America - but we will have parts of the 48 states done sooner and we can compare and share those partial results - they are about 5000x5000 pixels at 250 meters resolution.

6. Below are pictures of the first two tiles to calculate and evaluate for Veg_ET.

![](https://raw.githubusercontent.com/tonybutzer/assets/master/et/delaware-and-east-tiles-ndvi.PNG)


7. We plan to scale the model to run a complete strip/row as depicted below:

![](https://raw.githubusercontent.com/tonybutzer/assets/master/et/delaware-row3-geojson.PNG)

8. Prepared a COG generation demo to simplify understanding COGS for the upcoming Open Data Cube Steering Group.

9. Created a Jupyter-Notebook for automatic creation of GEOJSON files and ESRI Shapefiles for the legacy shapefile fans on the team.

10. Pushed data to the cloud using linux, docker and rclone without TIC impediments.

11. Learned the difference between median and mean.

### Week Ending 5/15/2020

1. Working with the NDVI data and reformatting it into compressed geotiffs and clipping/cropping the Great Lakes AOI with geojson and shape file specified coordinates.
2. Setting up the data for daily medians - possibly using the xarray python abstraction/eco-system.
3. Moved the model code and data wrangling code into documented python classes.

So the primary goal for next week is:
getting the North America "static" data placed in the cloud:

1. Precipitation
2. Soils
3. ETo
4. Ts
	
- meanwhile we will work with the NDVI we have and experiment with ways to create map-reduced daily averages in the miniPANGEO and the superPANGEO.
	
- we will also debug the model calculations by comparing the cloud computed values with pragmatic calculations
	
- we will also continue to organize the python code into useful classes.
 

### Week Ending 5/8/2020

The VEG_ET 2020 team finished another productive week.

#### Accomplishments

1. We have added Rich Signell science and cloud expert to the team - this is tremendous news for our team - and we are honored to have him as a member.
2. We moved the model from the Aussie Account to the USGS Space - We will need a more formal account in USGS CHS soon. We need to discuss this with Gabriel Senay and Rich Signell on options.
3. The model ran without modification in the new "more secure" CHS USGS sandbox with zero code modifications. AOI is Delaware River Basin.
4. We worked hard on an integrated environment sharing the best of both development environments the Windows Desktop (ARC gui and pycharm) and the speed and expandability of cloud storage.
5. We are working on reducing the S3 storage foot print to the least practical size for our needs.
6. We tested COG compression using "DEFLATE" we plan to test various compression schemes.
7. We continue to loop in Terry Sohl's [Greg and Jordan] crew on how to get data inputs to the AWS buckets and how to grab the many outputs from the model for quality inspections and science validation.

#### Enabling Technologies
1. fsspec
	- https://readthedocs.org/projects/filesystem-spec/downloads/pdf/latest/

2. fileZilla
3. S3FS linux mounts from an S3 bucket "tree"
4. python threads and queues

#### Traditions

We sent German Chocolate to Rich as part of the ET tradition for welcoming new ET Team members. After he begged -- we had to.

![](https://raw.githubusercontent.com/tonybutzer/assets/master/et/Rich_Signell_s.jpg)




#### Next Week

1. Rich is looking at building xarrays using dask to create the average daily NDVI over the 48States. This will help demo the bigPANGEO and its dask cluster and the xarray/dask pattern. There are at least three dask python patterns Tony needs to learn.

2. Gabe is working on transforming the model into modules so it can evolve with the project. We are working on getting Gabe the right pycharm tool-set - navigating the robust government approval process.

3. Tony will continue to help with the Windows meets linux meets the Cloud items. And finally learn dask.

4. We will likely work on the next steps plan and scope out the Great Lakes Tile by prototyping in the cloud. 

... more to come ...

... stay tuned ...

... to be continued ...


### April 25, 2020

My Actions for this week-end
	
1. Finish Transfer of 48State NDVI_filled data.
2. compress 48State data
3. Set up new USGS sandbox in AWS cloud
	
	
Gabe  - write software to window and compute 18 year avg NDVI for sq_90W_50N.geojson
	
	Fix model code to run from new bucket dev-et-data
	
	Help get code ready to run in docker container

 


#### Code Taxonomy - Bigger Pictures
	
1. Data Portal Extraction/Transfer Code - wrangles all 'level-0' data - sinusoidal NDVI - plus statics
2. Data preparation Code - reproject, align, organize, tile, verify
3. Model Runner Code - runs the model in a container - save the outputs in bucket as tiles
3. Presentation and Bragging Code - mosaic into shinny apps and maps and papers - oh my!

### April 15, 2020 Sandbox and Scaling

### Delaware Gets HOT then COLD

![hot](https://raw.githubusercontent.com/tonybutzer/npset/master/10-swarm-png-scale/00-01-swarm-png-app/tmax_animated.gif)


### March 30, 2020 Gregory Rouze

Interview Questions

1. Landcover 
	- NLCD
	- This landcover data set
		- format Raster? - Geotiff?
	- How is different or Better than NLCD
2. How long at EROS?
3. Python?
4. NetAPP Access?
5. ET familiarity
6. Personal Mission
7. Linux?
8. Interested in learning?
	- AWS
	- Jupyter Notebooks
	- Python
	- Scalable Processing
	- Cloud Computing Concepts
9. Describe your work with Darin Schulte





### March 29,2020

### Darin

1. Darin created an excellent demo using **PLOTLY and DASH**
2. [demo https://afternoon-crag-97068.herokuapp.com/](https://afternoon-crag-97068.herokuapp.com/)


https://github.com/ecolstat/phenology_library/blob/master/app.py

https://github.com/ecolstat/VegET


### March 27, 2020 Steffi

Good morning Tony,
 
how are you today? I am doing well.
I finally got all the data on that NetApp drive. 
Now i will continue to work on the soil data to finish it.
Cant wait to get to the next step.
 
The coordinates i used for the Delaware River Basin in gdal are:
```
dimx = 1938
dimy = 3124
xmin = -77.022786801  # (left)
ymin = 37.0082889025  # (bottom)
xmax = -72.98980008   # (right)
ymax = 43.5093469605  # (top)
```
 


### March 21, 2020

### Gabe/Steffi

Steffi & Gabe have most of the data inputs aligned in pickled numpy arrays 

1. This is a very important step as outlined in the following high level steps.
	- Gather or Locate on the web all critical input data
		- precipitation
		- temperature
		- potential ET
		- NDVI
		- soils
2. **Align Raster Data using GDAL tools**
	- store as numpy arrays
	- explore use of xarrays to collate and self document numpy gamut
3. Run Models
	- more detail needed HERE
4. Display, Visualize, and Host Vector and Raster Results

**SOILS**

1. still some work to get the right detailed soil input from Norm Bliss or alternate venue.



### Darin

![](https://plotly.github.io/images/dashboard-carousel.jpg)

1. Darin has been simplifying the Phenology models 
	- creating a flattened lookup table for soil type from NLDC
	- Using GEE to explore the data with a plan to migrate to AWS open source
2. Darin is exploring the tools for visualizing point data with a geographic reference plus ability to drill down
	- visual interactive dashboards
	- exploring Jupyter tools using Holoviz
	- encouraged by the capabilities in the python Plotly/Dash Library
	- Darin demoed early prototypes on March 20, 2020

#### Assignment

Darin will be exploring the sandbox at 

```
host sbet.hopto.org
sbet.hopto.org has address 34.215.234.93
```

1. with emphasis on looking at the sample years for MODIS NDVI
2. Darin should elicit tony's help if he gets stuck at any time
3. The NDVI data will eventually be curated by the LP DAAC and just be available in buckets in AWS Oregon

The data **bucket** is `ga-et-data` and the prefix is `MODIS_NDVI/`

**EXAMPLE LS**

```
aws s3 ls ga-et-data/
                           PRE Cloud_Veg_ET/
                           PRE MODIS_NDVI/
                           PRE inputsv0/
                           PRE lunch/
                           PRE steffi/


aws s3 ls ga-et-data/MODIS_NDVI/
                           PRE 2013/
                           PRE 2014/
                           PRE 2015/
                           PRE 2016/

```

### Tony

1. Tony is working on moving and organizing data in the cloud
2. Starting with the numpy pickled arrays located on Windows Shares
3. Gained permision to access the `watersmartfs` share.
4. Created a docker container that has both a CIFs [samba like] mount and rclone to push numpy to the cloud underneath the much more versatile linux OS
5. Tony is exploring the S3FS mounting options from cloud based systems and notebooks - very promising - abstracts away the unique S3 AWS specific access methods for bucket objects [files].
	- this work is in npset/pkg github of course.


### March 18, 2020

### Darin

> Tony, I have an example of the GEE results and a rough notebook of interactive data visualization for the phenology library. Still a few things to iron out to get the demo running, but we could talk about getting it up with the other notebooks, and how the inputs were generated in GEE, etc.. 

I'll keep trying to get the quirks figured out in the demo notebook, hopefully tomorrow night, and I'll be in touch to see about sharing it with everyone.

- From Renee

https://geemap.readthedocs.io


#### Juxtapose

[juxta example temperature cold day](https://cdn.knightlab.com/libs/juxtapose/latest/embed/index.html?uid=1da064a6-68a6-11ea-b9b8-0edaf8f81e27)`
### March 17, 2020

### Git Memory

[https://gitmemory.com/tonybutzer](https://gitmemory.com/tonybutzer)

![](https://avatars2.githubusercontent.com/u/1872600?s=460&v=4)

[https://github.com/rsignell-usgs](https://github.com/rsignell-usgs)

[https://gitmemory.com/rsignell-usgs](https://gitmemory.com/rsignell-usgs)

[https://github.com/friedrichknuth/covid_dashboard](https://github.com/friedrichknuth/covid_dashboard)


#### Animations and Prism Science Data

#### Temperature

![animate prism data](https://github.com/tonybutzer/npset/blob/master/00-notebooks/82-opendap-rich-signell-examples-prism-virtual-datasets/10hot_temp.gif?raw=true)

### March 16, 2020

#### Tony

#### Mike Tercek

![](http://www.yellowstoneecology.com/about/mike_tercek.jpg)

[Tercek in Video - worth watching](https://www.nps.gov/yell/learn/photosmultimedia/indepth-watersheddown.htm)


[NPS Catalog](http://www.yellowstone.solutions/thredds/catalog/daily_or_monthly/monthly/catalog.html)

[Climate Analyzer - Cool!](http://www.climateanalyzer.us/raws/kniferiverraws/graph_choices)

[Annual Static Summaries](https://npwbanalres.s3-us-west-2.amazonaws.com/annual_static_norm.html)

![Model Output](http://www.climateanalyzer.us/raws/kniferiverraws/graphs)

![Deficit](https://npwbanalres.s3-us-west-2.amazonaws.com/annual_normalized_change.jpg)


### March 14, 2020

#### Tony

1. Loaded the code from Mike Tercek here 
	- https://github.com/tonybutzer/npset/tree/master/fromMikeT
	- University of Idaho Northern Knowledge Network
	- THREDDS server
	- [https://www.unidata.ucar.edu/software/tds/current/](https://www.unidata.ucar.edu/software/tds/current/)
2. Started researching what a thredd server was.
3. Found a great video here
	- [Serving PRISM Climate Group data on the THREDDS Data Server](https://www.youtube.com/watch?v=VIuFLkN_FpM)
	- Rich Signell is definitely "a person in our neighborhood"
	- neat way to aggregate input and output data for our models
	- example python and matplotlib access as well as viewers etc.
	- Rich will be a keynote at the Open Data Cube Forum in August 2020 at EROS
	- **IMPORTANT NOTE STEFFI** - Rich in this video shows reading text files like the ETo in a non arcpy way using GDAL
4. Worked on converting the big input soil files to Cloud Optimized Geotiffs
	- significant storage savings and greatly reduces access times
	- still some occasional bumps when using rasterio and vsis3 - likely workarounds could be are easily built in python
		- this bump applies to COG and stripped TIF files 
5. Continuing to look at ways to stand-up and exploit Kubernetes in the cloud.
6. Discovered virtual backgrounds for the Zoom videoconferencing application - so now I can be telepresent from the Black Hills.
	- no green screen needed - 
	- also teams has a blur feature - not as cool - but still useful
7. EPSCoR - another new term: Experimental Program to Stimulate Competitive Research.

![costs](https://github.com/tonybutzer/assets/blob/master/et/costsAWS-mar14.png?raw=true)

### Mar 12 2020

### Steffi

I am converting the input data to numpy arrays, hope to be done soon, i am waiting for that right soil data and some more temp data to finish processing.

test notebooks to go here:

- 00-notebooks directory in your VegET rep https://github.com/skagone/cloud-veg-et



### Mar 12 2020

### Steffi

I am converting the input data to numpy arrays, hope to be done soon, i am waiting for that right soil data and some more temp data to finish processing.

test notebooks to go here:

- 00-notebooks directory in your VegET rep https://github.com/skagone/cloud-veg-et



I guess we will be doing a lot more things virtually for a while. I had a good - 2hour conversation with Darin Schulte --- yesterday and a zoom session to meet him - the LSP Phenology is all about NDVI so 

•	i directed him to the sample NDVI data we have in the cloud - he may do something over the Delaware River Basin as a first test. 
•	I think if he can create a notebook - I would be happy to wrap that into a library that we can reuse and later scale. –
•	He indicated Phenology is not so much about lines of code as it is about I/O and examining large stacks of NDVI
•	We will see what infrastructure topologies will match that alg.
•	I will also play with COGS on some of the 4.9 Gig files to see if I can improve the performance of accessing these larger critters.
•	Played a little with Kanban in the github – anything is better than Jira  😊
•	Added a few folks to our International and Open Sandbox – Mahsa, Cole and Aaron to help build a cadre of Pangeo experts
o	I am a firm believer in the cloud – it’s the best compute infrastructure I have seen in 40 years.

-	Stay Healthy Everyone

-	Cheers


### Mar 10, 2020

#### Tony

1. Worked with Steffi and Gabe to define some small steps 
2. Great conversations with Mike Trecek and Dr. Darin Shulte
3. Worked on a k8s curriculum for training our LPIP team and for refining my skills with k8s - this will likely pay off down the road when we implement this capability as a prodcution set of services.

We received the instructions for running Mike's code and I will post them in this web site below under Mike Tercek Instructions - see `Notes from Yellowstone`

#### Decision on Land Surface Phonology (LSP) Library

Senay:

> I think it is a good idea to move the Land Surface Phonology (LSP) Library  to the Pangeo framework.  I imagine we will also be building the most difficult procedure of LSP assignment, i.e, calling a particular LSP signature for a location and land cover type for a give time period?

But again, the sooner we integrate the VegET with its LSP libraries in the same platform the better! We got a few months ...



#### Gabe and Steffi
1. getting used to the cloud environment and understand where jupyter fits and how to combine that with other tools.
2. Pickled Numpy Arrays for all of the modeled inputs

### Mar 1, 2020 - Its really March?

**sharpen the saw today**

### Pangeo

[PANGEO SALES PITCH Excellent](https://www.youtube.com/watch?v=VNfpGIIjL3E)


[avoid death by powerpoint](https://www.youtube.com/watch?v=Iwpi1Lm6dFo)

### Feb 29, 2020 - Steffi, Gabe, Darin

### This project is taking off 

- Great working with the scientists on real world applications

- Such an opportunity for using the CLOUD

- There is nothing we can't build in the cloud and fast....

1. Steffi is working her magic here:
	[https://github.com/skagone/cloud-veg-et](https://github.com/skagone/cloud-veg-et)
2. I am anxious to start dissecting the NPS ET code - should be fun!!


Started a kanban to play with here:
[Kanboard KANBOARD kanboard KANBAN](http://10.12.69.21:8080/board/2)

`you can login with the same user and password as the jupyter lab sandbox`

xarray manual [Man](http://xarray.pydata.org/en/stable/generated/xarray.Dataset.coords.html)


**Discussion Notes**
1. Briefly discuss Makefile and git minimalism - add,commit,push
2. Determine if you are a gui or chewy user
	- The Jupyter Text Editors
	- Versus `vim` and the dreaded terminal
3. We should consider a birds-of-feather weekly Jupyter `bootcamp aws training`
	- this would be say 5 to 10 scientists hungry for cheating at AWS/Pangeo
	- I think Pete might build enthusiasm and permission to run such training classes
	- Tony would be happy to teach on numerous subjects
		- `Better Instructors` Nathan, Renee, Rich Signell, The Aussies via distance learning
		- We may want to zoom Dr. Darin Schulte in as well
		- Could be offsite and relaxed
	- could start with ET team plus Sanath plus Pete if he is interested and build by word of mouth
4. Xarrays - this could/should be a science construct that we heavily leverage across fire and water applications 
	- could roll your own - start building examples
		- [Tony's Simple Sanath Fire XARRAY](https://github.com/tonybutzer/active-fire/blob/master/00-notebook/00-explore-sample-data.ipynb)
	- could use Open Data Cube to create
	- could use some Pangeo stuff to create - stac-intake, odc-lite, 
5. Dask - someday I want to deep dive understand this
	- also ZARR - so many python objects - so little time - such a small, leaky brain - *SIGH*

### Feb 28, 2020 - meet with Steffi

1. Document Steffi Actions
	- probably focus on understanding the data assets in the cloud
		- the vsis3 stuff
	- explore visualizing the data
	- longer term seek out ways to just use data lakes in lieu of data portals and downloads and cloud pushes...
	- with Landsat C2 maybe use NDVI scaled to 250 meters via ODC scaling 
	- help me understand all this data summing and interpolation - or just keep you and darin involved in that part of the project.
	- do we have code that runs on a pc with no GEE libraries - could lift and shift and modify that code?
	- Roles and assignments - where should Gabe be focusing?
2. Tony
	- any benefit in mapping MODIS NDVI into xarrays - maybe even using ODC middleware?

### Feb 27, 2020

1. Standing up Jupyter Hub in Aussie Account
2. Started looking at the VegET code
	- a little concerned about how different GEE is to rasterio/xarray
3. Data Loading
	- still loading the MODIS data
	- bucket renamed to `ga-et-data`
4. Data Discovery - started some notes here
	[LPDAAC DATA WOW CLICK HERE:](http://10.12.69.21/33data_discovery.html#lpdaac)
5. More to Come
6. Tony should get better at packaging python pip/conda inside a venv with tljh - I know right?


### Detailed Items

### Notes from Yellowstone

Hi All,
Here are a few things that you mentioned being interested in during the call.

- -- gcm_getter.py  --> this will move the maca data to your amazon ec2 instance. The version that you have will get CSIRO-mk3-6-0, but you can swap that out for the names of other GCMS.

- -- rcp_splitter.py -- simple script that copies the different rcps into separate directories. Run this in the directory that has the *.nc from the script above

- -- param_splitter.py  -- run this in the folder containing the separated rcp data

- --sort_ren.py --> run this in the folders containing the separated *.nc files for each parameter. It renames the files so that the output of the reprojection and resampling steps below are easier to sort through. 

- --maca_processor_v3.py -- > This will take the maca netcdf files and make tifs that have the same resolution, projection, extent, as daymet. I did all this so that my historical and gcm output datasets line up, and so that I can use the same DEM, soil layer etc.

I imagine you will want to adjust all this and probably use some other projection, resolution, but at least the steps worked for me.

A few  notes to make the last script run properly:

- -- I use anaconda (from the community AMI containing anaconda preinstalled on ubuntu 16.04). This runs well on an M5a.xlarge.  On the command line write:

```
conda create -n py355 python=3.5.5.
source activate py355
conda install -c conda-forge nco
conda install gdal
```

but *do not*  run sudo apt install gdal-bin or sudo apt install netcdf-bin. Interestingly you can run these apt command both in the base environment and in the py355 environment with exciting results that don't work in different ways. 

> As I mentioned on the phone, using the native ubuntu C libraries or using different versions of python will sometimes bring in different versions of gdal and the nco tools like ncks and nccopy. There are several ways for that to go wrong. In the most obvious case it will create an "environment that has conflicts' and runs very slow. In the worst case it will appear to run fine without throwing any errors but produce garbage data. I wish I had a better explanation as to why these things happen or which actual versions were bad. My approach was just to spin up a bunch of machines and try every possible combination of installations that I could think of until I got results that were ok. By ok, I mean comparing the original maca data to the reprojected output and making sure that it looked way it should on a day to day basis. It's is fairly obvious when you have a problem. Either the data will contain huge holes of no data or have, .e.g. no precip in places that had rainstorms that day. Then I wrote this information down and have never changed it. I'm sure there is a better way but that's what I came up with. I'd be curious to see any improvements that you find.

Our results (historical and the GCM runs that are complete so far) are available on a THREDDS that I set up (with Docker by the way) here:

http://www.yellowstone.solutions/thredds/catalog.html

This would let you subset our results  to particular regions or times and compare them to your outputs. Maybe that would help at some point. I have this server running on a slow instance, so if you plan to do a lot of work with it, please let me know. I can boost it up to something more powerful.

