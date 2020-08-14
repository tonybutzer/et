## Data Wrangle

## rclone is THE BOMB!

`rclone copy MODIS_NDVI/ et-data:/ga-et-data/MODIS_NDVI/  -P`

```
tony@qotom ~ $ rclone copy MODIS_NDVI/ et-data:/ga-et-data/MODIS_NDVI/  -P 
Transferred:   	   43.191G / 46.937 GBytes, 92%, 1.255 MBytes/s, ETA 50m56s
Transferred:         1009 / 1099, 92%
Elapsed time:   9h47m18.8s
Transferring:
 *            2016/2016335.1_km_16_days_NDVI.tif: 91% /131.284M, 66.102k/s, 2m51s
Transferred:   	   43.241G / 46.937 GBytes, 92%, 1.255 MBytes/s, ETA 50m15s
Transferred:         1009 / 1099, 92%
Elapsed time:   9h47m59.3s
Transferring:
 *            2016/2016335.1_km_16_days_NDVI.tif: 95% /131.284M, 106.963k/s, 1m0s
Transferred:   	   43.959G / 46.937 GBytes, 94%, 1.255 MBytes/s, ETA 40m29s
Transferred:         1033 / 1099, 94%
Elapsed time:   9h57m47.3s
Transferring:
 *            2016/2016343.1_km_16_days_NDVI.tif: 27% /131.284M, 296.605k/s, 5m29s
 *            2016/2016344.1_km_16_days_NDVI.tif: 22% /131.284M, 312.016k/s, 5m32s
 *            2016/2016345.1_km_16_days_NDVI.tif: 19% /131.284M, 281.528k/s, 6m22s
 *            2016/2016346.1_km_16_days_NDVI.tif: 17% /131.284M, 405.909k/s, 4m33s

```

## Using the NETAPP

1. docker container on llsrlscd04
2. rclone container
3. docker exec -it rclone bash
4. su butzer

```
rclone copy /mnt/Projects/Cloud_Veg_ET/Data/ETO/ et-data:/ga-et-data/Cloud_Veg_ET/Data/ETO/ -P

rclone copy /mnt/Projects/Cloud_Veg_ET/Data/NDVI et-data:/ga-et-data/Cloud_Veg_ET/Data/NDVI -P

PPT
```

rclone copy et-data:ga-et-data/v1DRB_outputs/model_outputs/ /mnt/Projects/Cloud_Veg_ET/fromtony/ -P

### Notes

### Air Temperature

*./push-scp-ga.sh air_temperature*:

loading from local disk to cloud EBS

```
Mon, Feb 24, 2020  1:19:16 PM

Mon, Feb 24, 2020  2:51:21 PM

```

4.6 Gigabytes in an hour an a half - thru the VPN and TIC.

- more to come ....


### Sync to Bucket

- make a inputsv0 prefix

`aws s3api put-object --bucket ga-et-data-west --key inputsv0/ `


### Actual Sync

#### Dry run

```  aws s3 sync ./air_temperature s3://ga-et-data-west/inputsv0/air_temperature --dryrun ```

#### For Reals

```  time aws s3 sync ./air_temperature s3://ga-et-data-west/inputsv0/air_temperature ```

```
real    1m44.966s
user    0m39.020s
sys     0m23.729s
```

what took *an hour and a half* - can be done in *1 minute and a half*

- that's the cloud - its awesome - S3 is powerful
- and everyone can access the same buckets directly - think about it and *smile* :-)


### Nuke prefix

``` aws s3 rm --recursive  s3://ga-et-data-west/inputsv0/ --dryrun```

### Precipitation


```  aws s3 sync ./precipitation s3://ga-et-data-west/inputsv0/precipitation --dryrun ```

#### For Reals

```  time aws s3 sync ./precipitation s3://ga-et-data-west/inputsv0/precipitation ```

```
real    2m43.137s
user    0m33.461s
sys     0m7.885s
```

### Git Issue?

