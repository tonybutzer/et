## Set Bucket Policy

BUCKETNAME='ga-et-data'


aws s3api put-bucket-policy --bucket ${BUCKETNAME} --policy file://chs-read-list-policy.json


## Get Bucket Policy

echo "The bucket policy is now:"
aws s3api get-bucket-policy --bucket ${BUCKETNAME}

