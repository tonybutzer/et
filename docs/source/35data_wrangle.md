## Data Wrangle

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

