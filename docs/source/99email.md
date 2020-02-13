# Email Excerpts

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
 



 



