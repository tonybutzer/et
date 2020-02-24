<u>status</u>

---

# Technical Status

## WIP Focus Areas
1. Starting to define, examine and download required input data
	- MODIS
	- Rainfall/Precipitation
	- Other ?
1. Project Initiation - Project Charter
2. Weekly Communication Cadence
2. Code
	- Darin is gathering current VegET code into a public github - WIP
	- https://github.com/ecolstat/VegET
	- all code at this point is still rough prototypes - baby steps
2. Starting to evaluate technology stack choices
	- AWS = Yes
	- Oregon Region = Yes
	- Jupyter Interface = Yes
	- Python Language = Yes
	- Sandboxes and Compute Systems = WIP
2. Defining the overall vision for the intersection of the Models
	- SSEBop - Google Earth Engine 
	- VegET - Model exploring AWS, Pangeo, ODC
	- Merged Higher Level Product
		- May look at map reduced products from the Models - ex. NetCDF packages
		- Could explore ways to integrate other infrastructure such as HPC
		- Define the Landsat Role in this more sophisticated model
2. Synergies between LandFire and ET
3. Foundation Infrastructure
	- `Jupyter Incubator`
		- 10.12.68.34
		- Small Scale
		- always up
		- easy to reset
		- Allows Testing of OpenDataCube python libraries and data lake indexing
	- Data Bucket Creation - baby-step 1
		- in GA Account for access to any sandbox - any AWS system
		- Oregon region US-west-2
		- 
	- Sandboxes and Python Environments
		- etymology of a container
	- Project Website with DNS Record - DONE
		- initial ip is **44.226.205.97**
		- ```dynamic dns``` is et.hopto.org
	- ```dump tljh```TLJH inside CHS with OpenDataCube Functioning- document why
		- pangeo.chs offers an outsourced solution for simple jupyter play - frees Tony
			- pangeo limitations include sometimes broken;
			- USGS only
			- Slower speed TIC based internet connection
			- Somewhat complex architecture stack - maybe needed for scaling
		- tljh not easiliy integrated with ODC
		- tljh not a docker approach - development philosophy should mandate docker
5. Data
	- Loading
		- Initially from the VDI cluster --> 90DayTemp
		- 90DayTemp (scp) --> to AWS Instance
		- Eventually each sourced from cononical data provider directly via
			- wget
			- portal API
4. Proxy Data Lake as an ODC Indexed Product (c1l2scenealbers)
	- Initial focus is less about Landsat - 
		- Could use it for Context at this point
5. Simple Sample Jupyter Notebooks - Kagone plus others
6. Gap analysis technical shortfall analysis of pangeo.chs.usgs.gov as an OpenDataCube platform

## Tactical Successes
1. Meetings between technologists and scientists happening - weekly
2. Stood up a ET in the cloud website
	- http://et.hopto.org  # unofficial dns entry
	- http://44.226.205.97

## Technical Challenges
1. Data Loading
2. Defining the Index Strategy
3. Collection-2 not yet available
4. Loading non-Landsat complementary data


# High Level Status

## Successes

1. Established a PANGEO Project corresponding reference architecture with community and ESIP free and open Pangeo environments and example instances in Google Cloud, AWS and HPC centers.
2. USGS and GeoScience Australia hosting a number of training workshops to promote direct access to the Analysis Ready Data and teleport the Scientist directly adjacent to the data. Basically eliminating the need to transfer and store local copies of the data. 
3. Mature robust cloud capabilities with 100% uptime.
	- Elastic infrastructures that are cost efficient and scale dramatically to solve problems that are "Embarrassingly Parallel"
	- DCOI friendly approach

## Challenges

1. Pace and Frequency of Change
	- Many disparate Python Libraries - also dependency conflicts
	- Growth in the number of EO Satellites and Sensors
	- Explosion of Cloud Service offerings
	- Growth and change in architectural choices
2. Reduce the amount of data curation and technology deployment burdens to perform pure Science
	- Unburden the scientist
3. Collaboration among USGS peers in open source venues
	- Approvals and acceptance of these models is still under debate.
4. The technologist knows technology - the scientist knows science - how do we efficiently communicate
	- How to partition the tasks into technical steps
5. Cloud computing is unfamiliar and sometimes feared or misunderstood.
