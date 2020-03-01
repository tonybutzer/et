# SCRUM - running

## WIP

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

xarray manual [Man](http://xarray.pydata.org/en/stable/generated/xarray.Dataset.coords.html)


**Discussion Notes**
1. Briefly discuss Makefile
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

