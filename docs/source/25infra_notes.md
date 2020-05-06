## Infrastructure Notes

### Bucket Creation

#### Reference

https://github.com/tonybutzer/data-curation/tree/master/00proj/deploy/bucket

https://labs.detectify.com/2017/07/13/a-deep-dive-into-aws-s3-access-controls-taking-full-control-over-your-assets/


https://www.serverlab.ca/tutorials/dev-ops/infrastructure/terraforming-your-aws-environment/

#### Quick Excerpt

```
echo " Hi from Tony!"

## make the bucket

BUCKETNAME='ga-odc-eros-opt-west'
REGION='us-west-2'

#aws s3api create-bucket --bucket ${BUCKETNAME} --region ${REGION}

aws s3 mb s3://${BUCKETNAME}

## List the Bucket
echo "THE ODC bucket list is as follows:"
aws s3 ls

aws s3 ls ${BUCKETNAME}

## Set Bucket Policy

aws s3api put-bucket-policy --bucket ${BUCKETNAME} --policy file://optBucketPolicy.json


## Get Bucket Policy

echo "The bucket policy is now:"
aws s3api get-bucket-policy --bucket ${BUCKETNAME}
```


## AWS Cost Reviews

- Cost Explorer by Region
	- Monitor Services in Sydney
	- Export as CSV
		- Using Resource Groups

1. I need to expand on the detail here

## CHS 

merge requests - example
https://code.chs.usgs.gov/CHS-Custom-Infrastructure/LSDSDPAS/LSDSDPAS/-/merge_requests/399

request for service

We can just create a public bucket policy for whatever bucket you need to have public. You can request the policy following our CAB - Custom Infra Request process.

https://support.chs.usgs.gov/display/CHSKB/CAB+-+Custom+Infrastructure+Request


read:https://support.chs.usgs.gov/display/CHSKB/CAB+-+Custom+Infrastructure+Request

