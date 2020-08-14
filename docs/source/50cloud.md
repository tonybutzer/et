# Cloud

## Unpacking the AWS Cloud

> "Amazon has plans to build a new 120-acre data center park in Oregon's Umatilla County, reported The East Oregonian. The facility will join one of three sites in East Oregon. The existing two are located in the Port of Morrow Industrial Park (Boardman) and at the McNary industrial park just outside of Umatilla."

![oregon datacenter](https://raw.githubusercontent.com/tonybutzer/assets/master/et/50-cloud-boardman-oregon-aws.PNG)

### Location Location Location

![region cost graph](https://raw.githubusercontent.com/tonybutzer/assets/master/et/50-cloud-region-cost-variances.PNG)

### AWS Data Centers
![data center guts](https://raw.githubusercontent.com/tonybutzer/assets/master/et/50-cloud-data-center-guts.PNG)

## Cloud Advantages

1. elasticity and quick to scale
2. ephemeral - break it and rebuild 
3. economies of scale
4. many details are now someone elses problems
	- os patching
5. no down time
6. ubiquitous access
7. speed
8. autonomy - never blocked by human or policy

## Cloud Disadvantages

1. must trust the provider
2. when the meter is running - they are billing you
3. costs seem less tangible

## Managing Costs

1. s3 is $.02 per month per gigabyte
2. some instance types are free

## Cattle versus Pets


[Article Here](http://cloudscaling.com/blog/cloud-computing/the-history-of-pets-vs-cattle/)
)

## Bucket Permissions

### Cross Account

```
{
  "Version": "2012-10-17",
  "Id": "Policy1563360701540",
  "Statement": [
    {
      "Sid": "ListFrom-usgs-CHS-aws",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::574826924367:root"
      },
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::ga-et-data"
    },
    {
      "Sid": "GetFrom-usgs-CHS-aws",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::574826924367:root"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::ga-et-data/*"
    }
  ]
}
```
