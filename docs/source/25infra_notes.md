## Infrastructure Notes

### Bucket Creation

#### Reference

https://github.com/tonybutzer/data-curation/tree/master/00proj/deploy/bucket

https://labs.detectify.com/2017/07/13/a-deep-dive-into-aws-s3-access-controls-taking-full-control-over-your-assets/



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
