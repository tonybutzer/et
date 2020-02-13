# Project Charter "Elastic K8s Jupyter Hubs"


## Introduction: 

> A project charter is a formal project authorization which documents the shared understanding of a project’s scope, development, and objectives, while also defining the roles and responsibilities of each party involved.

## Business Case;  The BIG WHY!

1. "There are more human beings on the earth than have ever died"
    - This leads to resource shortages and implications for humanity.

2. Resources need to be managed
    - Laws and governance must create efficient use of land and water.

3. Mapping Remote Sensing Data into usable information is paramount to charting resource scarcities and abundances.
    - Jupyter notebooks are becoming a game-changing approach for presenting science findings
    - Convincing some of the people governing countries will require clear presentations of the facts of global change.

4. Cloud computing is revolutionizing data lakes and immediate scalable processing

> He who has a why to live can bear almost any how. -- Friedrich Nietzsche

### Project Statement

This project's vision is to have a push-button start and stop of the DevOps infrastructure for supporting a clustered operating system using the predominate technology Kubernetes. On top of this distributed cluster for orcehstrating general PODS of containers, we want to run a master container JupyterHub and allow it to spawn (one per user) a "batteries included" jupyter notebook container. These containers will showcase a number of data science notebooks that exploit the Landsat Data Lakes specifically and general image analysis notebooks.

This sounds fairly simple and straight forward - however there is significant complexity to be encapsulated in this project. 

The project team shall exploit prior-art where possible and work to simplify many of the arduous steps necessary to stand up a full Kubernetes stack and a set of Helm charts to deploy the JupyterHub and JupyterNotebook services.

### Concept

The end users for this infrastructure will be a unique set of Science and Engineering personnel that will likely be brought together in training and technology exchanges, hackathons or collaborative science conferences requiring both short term, spontaneous, scalable infrastructure in the AWS cloud and also likely longer term persistent sandboxes leveraging jupyter notebooks as part of the larger Pangeo reference architecture

### Scope: 
- unique project characteristics

1. This system must run in the CHS (Cloud Hosting Service) specific AWS cloud implementations and function under any security induced constraints apparent in this environment.

2. 

## Success Criteria: 
- define the project success and list critical success factors

1. Infrastructure as code (a service?) that stands up an optimal Kubernetes Orchestration system with its corresponding elastic, auto-scaling, compute cluster

## Major Milestones

1. LPIP Lunch and Learn - "Accessing Landsat data in the cloud using Pangeo based Notebooks and Other Tools"
2. Science Sandbox Based Hackathon Flagstaff
3. Persistent EROS Pangeo Sandbox (CHS Hosted)

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

1 Funded as part of LSAA and OpenDataCube

### Stakeholders

1. Government Program Managers
	- Steve Labahn
	- Kristi Kline
2. Enterprise Architect - Randy Sunne
3. Development Team
4. Cloud Team (DevOps?)

- what are the project’s known and unknown parameters at this point in time?

## Summary of Risks: 
- a high-level overview of major threats to the project’s success

1. Kubernetes is very complicated
2. Security Items will need to be addressed - likely in stages
3. Attention Span risk - the amount of work and the pace of change can vector resources in unexpected ways.

## Team and Organization: 

- list who will work on the project, who oversees the project, and outline their roles

1. Renee Pieschke - PRODUCT MANAGER - strategic advisor
	- Rich Signell - Visionary
2. Pegah Lashgarlou - EKS/K8s expert and administrator
	- Sam Congdon - EKS Consultant
	- Bill Howe - AWS Consultant
	- John Hedman - AWS Consultant
	
3. Tony Butzer - Jupyter Hub and Jupyter Notebook - facilitator
4. Rizbi Hassan - Notebook Content Managment

## Approvals: 
- a space for stakeholders to record their approval (or disapproval) of the charter 

## Scheduling documents: 
- a timeline, calendar, or other document that illustrates the project schedule with details about each milestone or phase

This project will use agile techniques with Rocket Chat and perhaps a Kanban

[Kanban](http://10.12.66.180:8080)
    
## Communication plan: 
- this includes details about how each person involved will be kept informed about progress, changes, etc. (Here’s how to create a communication plan)
