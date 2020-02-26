#! /bin/bash -x

# this script will create the bucket
# 
# Then a policy will be added that limits the IP see THE POLICY below
# add a simple bucke image


echo " Hi from Tony!"

## make the bucket

BUCKETNAME='ga-et-data'
REGION='us-west-2'

#aws s3api create-bucket --bucket ${BUCKETNAME} --region ${REGION}
aws s3api create-bucket --bucket ${BUCKETNAME} --region ${REGION} --create-bucket-configuration LocationConstraint=${REGION}

#aws s3 mb s3://${BUCKETNAME}

## List the Bucket
echo "THE ODC bucket list is as follows:"
aws s3 ls

aws s3 ls ${BUCKETNAME}
