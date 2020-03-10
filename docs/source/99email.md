# Email Excerpts
Hi Stefanie and Tony,

Sorry it took me so long, but I had the chance to go through the previous emails and the website, and thought I'd send over some thoughts, questions, ramblings, etc.....

I'm including Gabriel here as well. Gabriel, there are some ideas below about the NDVI signatures (phenology) library that would be good to get your thoughts on.


Website:
•	WOW! The website is extremely impressive! That's a ton of work that happened really fast, and it was fantastic to go through and get caught up. It had never occurred to me to use a website for project planning / management, but I'm a huge fan of it now!
NDVI signatures library:
•	We've been working to get the NDVI signatures library built in Google Earth Engine (GEE). It's essentially done, but we're still trying to deal with the challenges of memory limits/timeouts, and exporting the results out of GEE for visualization. That's ok for the stand-alone purpose of generating the libraries, but pretty limiting in terms of actually using the library in models/simulations. Gregory Rouze and I have had some back and forth emails about how the ndvi signatures library can be used in FORE-SCE. He's been asking some great questions that have really helped in planning out some of the technical aspects of creating/using the library.
•	Considering some of the points Greg has raised, I am starting to think that the sooner creating the NDVI signatures can be incorporated into the VegET / Pangeo workflow, the better for a few reasons:
o	Greg and I have discussed creating the NDVI library as a geoJSON object to allow for spatial queries, but after seeing Tony's discussion of xarrays, I think there may be better options that would integrate with the Pangeo VegET and FORE-SCE
	I'm also very interested in capitalizing on Holoviz for visualization, and with datashader and geoviews, I think working with xarrays could be advantageous. 
o	I saw the comment on the website about concerns with transitioning the VegET from GEE  dependent code / algorithms. I completely agree with that concern, and getting away from GEE dependence for the phenology library sooner rather than later would be great.
•	Stefanie, I don't have a complete grasp of the entire Pangeo/VegET project, so if integrating the phenology library component is outside of the project scope, we can keep those worlds separate. 
Collaboration:
•	I'm not sure to what degree a non-USGS team member can be involved in the project, but if possible, I would love to join planning/training meetings by phone or zoom, etc. Particularly if you are having weekly scrum meetings, it would be great to join in on those. It's completely understood if that's not possible though.
•	Tony, would we be able to have a phone/zoom call some time in the near future to discuss some of the resources you've put together? It's incredibly exciting to see what you and Stefanie are putting together. A lot of it represents some new concepts for me, and if you would be open to a barrage of questions, it would be very appreciated!
•	The website mentions the possibility of setting up weekly "birds-of-feather weekly Jupyter bootcamp aws training" and the potential to zoom in to those. If that materializes, please count me as an enthusiastic YES!

Thanks for all of the great work!

Darin




---
---

Stef, et al 

We should setup another more ET project focused meeting in 2 weeks to go over the project charter and fill in some color.

I am setting up a project web site for the ET cloud experiment.- more details to follow …. Project charter, project decisions, documenting the infrastructure, organizing the python libraries (numerous) – identifying risks, issues, obstacles. – approval processes etc – data wrangling and storing in object storage, permissions, firewalling security  … …


I am using terraform infrastructure as code to stand this webserver up in minutes (AWS). – details available here
https://github.com/tonybutzer/et  -- tfinfra -- et-project-webserver


I will be using markdown to create a project website, starting with a project charter to define the who and the how.
And clarify for me the what and the when.

I believe that we will be doing the development/research phase outside the pangeo.chs.usgs.gov arena and may eventually do something joint with the Aussies – they really have the best open source approaches and more experience than the USGS in xarrays meet the AWS cloud – - This is a ways down the road and I will work on getting people used to that collaboration idea starting with the USGS/GA Steering Group of big wigs – Pete Doucette is chairing a session in April on Cloud Computing Meets Collection-2  - I will be giving a 90 minute talk in that session – ET will be one of the exciting highlights I believe.

Once we have a proof of concept and a lightweight concept of operations – we can define the options for scaling and production creation of ET products as well as creative ways to use the browser to present these to Science co-conspirators in the ET realm. – This may use AWS batch like our cloud based LPGS system uses or Kubernetes with auto scaling like the Aussies use.

I’ll update you as we move forward.

We will need to brief Kristi Kline, Steve Labahn and Pete Doucette – once we have a comprehensive research story.

-tony


Trivial details below
-----------------------------------------------------------------------------------------------------------------------------
Here is a cost chart from the AWS estimator for the website – paid for by my Aussie colleagues.

**$3.45** per month.  -- https://calculator.s3.amazonaws.com/index.html


## Kickoff Email

Thanks for your time today. I am excited to help look at using AWS and open source code to model Evaporation and Transpiration (ET). 

We will start to look at the data sets needed and cloud bucket loading strategies – we have lots of experience here and S3 is makes this fairly simple. I have some machine access on the internal networks at EROS and Renee and I can look at sanctioned methods of transferring and organizing this data into indexed buckets. – Indexing in some cases may be as simple as directory tree/object tree traversal. And we have STAC and postgres models as well. 

I prefer the simple approaches where plausible.

I like Mac’s idea of getting the data staged and having simple notebooks that display the scope and visualize each data subcomponent/bucket for ET – composite modelling.

Below is the link from Renee-The-Awesome to register for pangeo sponsored by the usgs inside the CHS enclave.

I will document this choice of Pangeo and we will evaluate the ramifications as we go along. – Once Collection-2 is PUBLICLY released we can likely work in other sandboxes on any Landsat centric science application.  We will likely use the Collection-1/Level-2/Albers/WRS-2/Scene Data Lake as a proxy for Collection-2 in the short term to try to keep schedule slippage risk to a minimum.

I plan to add Nathan’s cool new dask-enhanced notebook on creating a long term time series xarray from a Landsat Data Lake to my eclectic cache of notebook examples in github.

We will evaluate different methods for searching metadata catalogs and creating xarray abstractions. Open Data Cube can resample pixels and reproject pixels if necessary to merge disparate data into synergized abstractions.

I will start to contemplate ways to engage non-usgs folks in the collaboration – even if we have to replicate small samples of the data in other buckets until the world has a robust set of directly, publicly accessible, data and aux data.

Gabriel Parrish: - Here is a great resource to enhance your already rich Markdown skills for documenting notebooks.
https://jonschlinkert.github.io/remarkable/demo/



ET in the cloud.
 



 



