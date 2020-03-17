# SCRUM - running

## WIP
### March 17, 2020

### Git Memory

[https://gitmemory.com/tonybutzer](https://gitmemory.com/tonybutzer)

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

![Model Output](http://www.climateanalyzer.us/raws/kniferiverraws/graphs)


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
[Kanboard KANBOARD kanboard KANBAN](http://44.226.205.97:8080/board/2)

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
	[LPDAAC DATA WOW CLICK HERE:](http://44.226.205.97/33data_discovery.html#lpdaac)
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

It was fun to talk to you and I'm looking forward to more collaboration. Feel free to write with any questions. I'll do the same!
Mike


- note - Thanks Mike for all of the help in bootstrapping our models in AWS







