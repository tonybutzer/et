## Data Wrangle

### Notes

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

``` aws s3 sync ./air_temperature s3://ga-et-data-west/inputsv0/ ```
