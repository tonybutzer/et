<u> charter</u>
# Project Charter PANGEO ET Model 
## "Evapotranspiration Modeling in AWS using the PANGEO Architecture"


## Introduction: 

- The ET Science Team has successfully demonstrated the ability to globally scale their models using cloud platforms. Notably Google Earth Engine.
	- However there are trade-offs and some disincentives for continuing to use GEE.
	- AWS will soon house the Landsat Collection-2 data set and allow direct access to pixels, metadata and pixelqa data.
	- This environment should lead to efficiencies in creating ET products and this research project seeks to explore and document these efficiencies.

- Cloud computing offers many attractive features for cost effective processing of Embarrassingly Parallel Algorithms 
	- It is assumed or known that ET models allow for a parallel processing model.

```
NOTE: we need to document the contrasting approaches and some of the policies of GEE versus Open Source and AWS.

also consider govt contracts that include M$ Azure etc.
```

> A project charter is a formal project authorization which documents the shared understanding of a project’s scope, development, and objectives, while also defining the roles and responsibilities of each party involved.


### Project Statement

This project will explore the feasibility of porting the ET models into cloud compute instances likely leveraging the general PANGEO model and exploiting the "xarray" abstraction and multi-dimensional data model and slicing methods.

This sounds fairly simple and straight forward - however there is significant complexity encapsulated in this project.  The team's goal will be to pilot this Science model and then look for ways to simplify the complexity and create a python code set that can be used in any cloud platform.

The project team shall exploit prior-art where possible and work to simplify many of the arduous/tedious steps, especially in creating and decommissioning elastic infrastructure.

### Concept

```
NOTE: Need to build some concept of operations pages also 

but here we just need to define what we are building
```

System is defined to be the ET model system ( Data, Code, Infrastructure, and Monitoring) subcomponents.

- The system shall run in AWS
- The system shall run in pangeo binder sandboxes
- The system shall exploit COGS and STAC when they become available
- OpenDataCube will be evaluated as a possible principle component/middle-ware/python-library

### Scope: 
- unique project characteristics

1. This system must run in the CHS (Cloud Hosting Service) specific AWS cloud implementations and function under any security induced constraints apparent in this environment.

2. This system should be able flexible and in some cases use other sensor data in lieu of the data used to prototype the system.

## Success Criteria: 
- define the project success and list critical success factors

1. The architecture choices and code base used for the prototype ET modeling application should directly map to a routine, periodic, production capability that leverages cloud services and exports products in an easily exploitable way.

## Business Case;  The BIG WHY!

### Population Growth and Better Resource Management

1. "There are more human beings on the earth than have ever died"
    - This leads to resource shortages and implications for humanity.

2. Resources need to be managed
    - Laws and governance must create efficient use of land and water.


### Simplifying Science by Simplifying Data Access and Exploitation

3. Mapping Remote Sensing Data into usable information is paramount to charting resource scarcities and abundances.
    - Jupyter notebooks are becoming a game-changing approach for presenting science findings
    - Convincing some of the people governing countries will require clear presentations of the facts of global change.

4. Cloud computing is revolutionizing data lakes and immediate scalable processing

> He who has a why to live can bear almost any how. -- Friedrich Nietzsche

### ET Scientists have a willingness to Exploit Cloud Platforms
1. The PANGEO Sandbox Model is interesting enough to the ET project to explore
2. The USGS is also exploring PANGEO incubation environments
3. Collection-2 will live in the cloud in Oregon - we need to understand this new Landsat Data Access Model.

## Key Calendar Event Watch

1. Jupyter Pangeo Workshop 1 - Pieschke/Roberts - December 2019
3. Persistent Pangeo Sandbox (CHS Hosted) (EarthMap Funded) February 11, 2019
2. Open Data Cube Annual Hackathon - February 2020 in Canberra, Australia
3. ET Pangeo Project Kickoff `[THIS PROJECT]` - February 2020
4. USGS -- GeoScience Annual Planning and Collaboration Group - big wigs pontificate - April 26-30, Annapolis MD. `[Doucette, Labahn, Jenn Lacey, Butzer]`
5. PANGEO/pangeo.chs.usgs.gov open for use -- **May 1, 2010** - thanks Rich
5. Collection-2 Public Release with STAC catalog and STAC API/Service - May 15, 2020
6. Open Data Cube Science Workshop at EROS - hosted by Alex Leith and CEOS's Brian Killough - June 15, 2020 `[Jupyter, AWS, ODC, Collection-2 DEEP DIVE]`

## Major Milestones

### Project Initiation
- define phase strategy
	- prototype, feasibility study, incubation
	- first ad-hoc model test case - Delaware - "Liberty and Independence" - my motto as well.
	- define scalable production options and notional architecture [perhaps lightweight CDR and ORR]

### Conops Generation

- define AOI
	- Delaware River Basin
	- Great Lakes 10 degree Tile
	- 48 Status USA
	- All of North America - wow - go Steffi
- we focus on the NDVI Modis - with an eye on Landsat ?
	- average daily observeations of NDVI over 2001-2018
	- yearly time series xarrays?
	- pixel math
	- cloud masking?
	- pruning of data based on qa or cloud cover?
	- NDVI, NDWI etc ....
	- Soils data preparation
	- NDVI plus static data tifs
	- numpy arrays 1st - then xarrays to exploit dask parallel supercomputers

### Data Prepare

See section below - still WIP


### Code Packaging and Evaluation

	- Initial github repo 
	- Organizing the parts in to libraries
		- et-model-lib
		- et-data-xfer-lib
		- ODC(libraries)
		- GDAL stuff
		- xarrays, numpy, matplot, seaborn ... ... ...


### Jupyter Hub Infrastructure

- Building an infrastructure test-bed
	- jupyter labs, notebook and hub capable
	- ODC libraries work
- Indexing 
	- postgres ODC Index
	- STAC service
	- Companion services in same VPC/network broadcast domain
		- Docker containers with projected port access


## Staffing, Roles, Skills, Responsibilities


## Staff Contact List

```bash

Terry Sohl
Principle Investigator
U.S. Geological Survey EROS Center, 
Sioux Falls, SD, 57198, USA 
<u>sohl@usgs.gov</u>
 
Ward Sanford
Co-Principle Investigator
Water Resources Mission Area
12201 Sunrise Valley Dr, Reston, VA 20192
wsanford@usgs.gov
 
Gabriel Senay
Co-Principle Investigator
U.S. Geological Survey (USGS), Earth Resources Observation and Science (EROS) Center, 
North Central Climate Adaptation Science Center, 
Fort Collins, CO, USA
senay@usgs.gov
 
Stefanie Kagone
Research Scientist
ASRC Federal Data Solutions LLC, Contractor to the U.S. Geological Survey EROS Center, 
Sioux Falls, SD, 57198, USA 
skagone@contractor.usgs.gov
 
Kul Khand
Research Scientist
ASRC Federal Data Solutions LLC, Contractor to the U.S. Geological Survey EROS Center, 
Sioux Falls, SD, 57198, USA 
kkhand@contractor.usgs.gov
 
Darin Schulte PhD, MLA
Research Scientist
Natural Resources Ecology Laboratory
Colorado State University
darin.schulte@colostate.edu
 
Gabe Parrish
Remote Sensing Scientist
Innovate!, Inc., TSSC Contractor to the U.S. Geological Survey EROS Center, 
Sioux Falls, SD 57198
gparrish@contractor.usgs.gov

Gregory Rouze
Remote Sensing Scientist II / Technical Support Services Contract (TSSC)
KBR Contractor to the USGS Earth Resources Observation and Science (EROS) Center 
Web: https://www.usgs.gov/centers/eros
Office: 605-594-6840


________________________________________
Jordan Dornbierer
Scientist | Technical Support Services Contract (TSSC)
KBR Contractor to the USGS Earth Resources 
Observation and Science (EROS) Center | Web: https://www.usgs.gov/centers/eros
Office: +1 605.594.2810 | jdornbierer@contractor.usgs.gov
________________________________________


Tony Butzer
OpenDataCube Cloud Engineer
KBR - Sioux Falls
butzer@contractor.usgs.gov
```

### Terry Sohl - Principle Investigator
1. Specializing in Land use/change modeling
2. development of the FORE-SCE (FOREcasting SCEnarios of land-use change) modeling framework
3. Published Scientific Author
4. representative for the USGS EarthMAP initiative
### Ward Sanford - Co-Principle Investigator
1. Specializing in regional groundwater flow and transport and water budget
2. Published Scientific Author
### Gabriel Senay – Co-Principle Investigator/Project Lead
1. Specializing in Water Cycle modeling and predictive models
2. Published Scientific Author
3. Lives to integrate land cover and hydrologic modeling.
4. Inventor of the VegET and SSEBop ET model
### Stefanie Kagone - Research Scientist/Team Lead 
1. Experienced VegET modeler and Python coder
2. Highly Responsive Communicator and Motivating Force
3. Published Scientific Author
### Kul Khand - Reseach Scientist
1. Experienced hydrologic modeler
2. Published Scientific Author
3. Voted best name for a colleague in the WaterSMART project
4. He is a Jackrabbit.
5. Jumped from the Mountains of Nepal to the plains of South Dakota
	- He had to walk up hill to school for an hour -- both ways. :-)
> For me in particular, most of my work is involved in studying how the global change, the land cover change specifically, is impacting water resources ... and finding scientific solutions to sustain the available water resources.”

### Darin Schulte - Research Scientist
1. Python Coding
2. Operation model experience in the cloud
3. GitHub knowledge
4. Python Skills
5. VegET expertise
6. Works in a liberating Academic University Environment - (```Valued Perspective```)
7. Hopes to attend the August Open Data Cube Forum 2020 at EROS
	- This Workshop promises to unleash some ```revolutionary``` capabilities in the cloud for SCIENCE!
	- This Workshop will be well attended by an enthusiatic cadre of International World Class Scientists
 
### Gabe Parrish - Remote Sensing Scientist
1. Experienced in Jupyter Notebooks - completed the workshop training
2. Markdown documentation skills
3. open source coder
 

### Tony Butzer - Open Data Cube Cloud Engineer

1. DevOps and Infrastructure
2. Python code builds and docker containers
3. Docker Orchestration
4. Open Source Agile Development Methods
5. Open Data Cube experience and liaison to higher level engineers in ODC
6. Cloud computing enthusiast
7. Loyal EROS employee since the 80's

#### Weaknesses
1. Lack of Scientific Background
2. Low Tolerance for metawork and obstacles.
3. His brain wanders and won't shutoff. If only he could harness it for good.



# TONY TONY TONY - fix below NOW!

## Major Requirements 

1. Supports Science Hackathons
2. Highly repeatable
3. Easy up and down
4. Documented and deployed as code (codified in CFT and/or Terraform)

### Deliverables: 

1. Github repos 
	- CFT templates
	- terraform examples
	- ipynb files
	- tools for installing python libraries
	-
2. Web based project documentation
3. EKS cluster in the dev environment
4. Jupyterhub Container/Pod/Service
5. JupyterNotebook Container/Pod/Service


#### Companion Items
1. Data Lake of Collection 2 Landsat
2. TBD.

## Deliverables
### PANGEO.CHS.USGS.GOV Evaluation Gap Analysis WhitePaper
1. What libraies need to be added 
2. How are companion micro-services or database services hooked into these one size pangeo environment?
3. Will USGS add binder as a capability for personalization and customization?

### ET AWS Code Base - Running Model
1. Feasibility Analysis of Xarray meets ET
1. Mechanisms for transferring companion data into the cloud.
1. Small Prototype
2. Scaling and Stress Testing The Model
3. How to move to production

### White Paper CONOPS - Scaling ET in AWS for Production

### Cloud Portability Analysis

### GEE versus AWS for Scientific Discovery



#### List of deliverables: 
- if deliverables are already defined, this list contains details about each deliverable—what it is and what its success criteria is

- describe the major stakeholder requirements or key project deliverables depending on how you choose to track your deliverables

## Budget: 
- cost estimate, information about spending authority

## Schedule or Milestones: 
- when will the project be complete, and what are the major milestones?

1. Get Kubernetes Running in AWS
	1. Development cluster for butzer - no autoscale
	2. Development Cluster - for Pegah - wip

2. Get Jupyter Hub Working in the above K8s Environment
	1. Single Pod deployment
	2. Helmchart deployment based on Pangeo
		1. Web site here:

3. Collate Jupyter Notebooks in Github Repo

## Constraints and Assumptions: 

1. Funded as part of LSAA and OpenDataCube and Science (Doucette) 
	- initial incubation - not an issue - if the story is compelling - long term will not be an issue either
2. Brief the stakeholders when we have something concrete to say


### Stakeholders

1. ET Team of Excellence
1. Government Program Managers
	- Steve Labahn
	- Kristi Kline
	- Pete Doucette
2. Intervening Managers and Government Customers
	- to be determined or perhaps to be ignored
2. Enterprise Architect - Randy Sunne
3. Data Scientist and Data Engineer - Renee Pieschke
4. Science liaison
3. Development Team (N/A)
4. Cloud Team (DevOps?)

- what are the project’s known and unknown parameters at this point in time?

## Summary of Risks: 
- a high-level overview of major threats to the project’s success

1. Kubernetes is very complicated
2. Security Items will need to be addressed - likely in stages
3. Attention Span risk - the amount of work and the pace of change can vector resources in unexpected ways.

## External Subject Matter Option List

- list who will work on the project, who oversees the project, and outline their roles

1. Renee Pieschke - PRODUCT MANAGER - strategic advisor - Collection-2 Expert
	- Rich Signell - Visionary - PANGEO expertise
	- Nathan Roberts - cloud data access, xarray and dask
2. CHS Team AWS Cloud meets FedRAMP
	- Pegah Lashgarlou - EKS/K8s expert and administrator
	- Sam Congdon - EKS Consultant
	- Bill Howe - AWS Consultant
	- John Hedman - AWS Consultant
	
3. Tony Butzer - Jupyter Hub and Jupyter Notebook - facilitator
4. Rizbi Hassan - Notebook Content Management

## Approvals: 
- a space for stakeholders to record their approval (or disapproval) of the charter 

## Scheduling documents: 
- a timeline, calendar, or other document that illustrates the project schedule with details about each milestone or phase

This project will use agile techniques with Rocket Chat and perhaps a Kanban

[Kanban](http://10.12.66.180:8080)
    
## Communication plan: 
- this includes details about how each person involved will be kept informed about progress, changes, etc. (Here’s how to create a communication plan)

1. Weekly Meetings at least during incubation
2. ET PANGEO website - records details - like an engineering notebook
	- promotes wider collaboration
	- saves on keystrokes
3. more to be defined ....
