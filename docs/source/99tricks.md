## BIG PANGEO HINTS

### Credential Tricks

```
#!/bin/bash
# get temporary keys for GDAL based on role using AWS CLI
AWS_STS_RESPONSE=`aws sts assume-role-with-web-identity \
        --role-arn arn:aws:iam::376067480372:role/eks-pangeo-node \
        --role-session-name gdal-session-$(date +%s) \
        --web-identity-token file:///var/run/secrets/eks.amazonaws.com/serviceaccount/token`
# parse CLI response using jq and grep
export AWS_ACCESS_KEY_ID=`echo ${AWS_STS_RESPONSE} | jq -r '.Credentials.AccessKeyId'`
export AWS_SECRET_ACCESS_KEY=`echo ${AWS_STS_RESPONSE} | jq -r '.Credentials.SecretAccessKey'`
export AWS_SESSION_TOKEN=`echo ${AWS_STS_RESPONSE} | jq -r '.Credentials.SessionToken'`
export AWS_REGION=`echo ${AWS_STS_RESPONSE} | jq -r '.Provider' | grep -oP '(?<=eks.).*?(?=.amazo
naws)'`
# for GDAL<3.2
export AWS_DEFAULT_REGION=$AWS_REGION

export AWS_REQUEST_PAYER=requester

```

#### GDAL 

```
gdalinfo --config AWS_REQUEST_PAYER requester /vsis3_streaming/dev-et-data/compressed/NDVI_filled/2001/2001001.250_m_NDVI.tif
 
```

#### AWS requester - sure does pay!

```
(pangeo) jovyan:~$ alias awr='aws --request-payer=requester'
(pangeo) jovyan:~$ awr s3 ls dev-et-data/
                           PRE 01drop/
                           PRE NDVI_filled/
                           PRE compressed/
                           PRE etasw_2014/
                           PRE etasw_2015/
                           PRE greg_outputs/
                           PRE level-1/
                           PRE steff_2014/
                           PRE steff_2015/
                           PRE t50n-90e/
                           PRE v1DRB_outputs/
2020-05-05 23:59:59         62 Readme-bucket.md
2020-05-05 23:50:00         13 tony.txt
```

## Stopping TLJH

### Services


```
sudo systemctl disable jupyterhub.service
sudo systemctl disable traefik.service
sudo netstat -anlp |grep 80
sudo systemctl stop traefik.service
sudo systemctl stop jupyterhub.service

```

