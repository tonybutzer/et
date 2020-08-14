# Code

## VegET Code

## Code Readability 

## Simple User Interface

### python3 run_veget.py 40N-80E

- geojson and shapefile bakeoff


## Simple and Separate Param Files

### run params
- Customer: Tony
- Author: Steffi
```
# ================ ACTIVE config SECTION ==============================
# === Minimalist Beta Version Params ====
start_year: 2015
end_year: 2015
start_day: 001
end_day: 003

accumulate_mode: [daily] #[yearly, monthly, daily]

geojson_file: a.json
shapefile: C:\WaterSmart\Projects\CloudVegET\shapefiles\out_box.shp
# sample tiff could/should be derived from the geojson clip of the ndvi - or maybe not needed - tbd
sample_tiff: C:\WaterSmart\Projects\CloudVegET\local_testing\ndvi\med001.250_m_NDVI.tif
```

### model params

- Customer: Gabriel Senay
- Author: Steffi

```
# === Parameters set by Gabriel Senay ====
# defining low and high temperature values (in C°) to determine what is snow, sleet, rain
rf_low_thresh_temp: 0
rf_high_thresh_temp: 6
rf_value: 0.167
melt_factor: 0.06

# drainage coefficient = 1 - runoff coefficient
dc_coeff: 0.65
# 1 - dc_coeff
rf_coeff: 0.35

# constant values to adjust NDVI in the ET calculation
k_factor: 1.25
ndvi_factor: 0.2
# water adjustment
water_factor: 0.7
# reference ET bias correction
bias_corr: 0.85
alfa_factor: 1.25
```

### path params

- TBD

https://github.com/tonybutzer/cloud-veg-et/blob/master/00-tony/00-notebooks/sample_config/path_param.yml


### Clean Code and Code Smells

![](https://raw.githubusercontent.com/tonybutzer/training/c603fbc0e36764f467ac87fd18baa1dce01c9bf9/craft/dotPlay/codeSmellsComplexity.png)

#### Speculative Generality

- Can/should we move this flavor of code to the attic - Gabe,Tony ?

![](https://raw.githubusercontent.com/tonybutzer/training/c603fbc0e36764f467ac87fd18baa1dce01c9bf9/craft/dotPlay/codeSmellsOOP.png)

### Code Refactoring

### Best Practices

### 

### Github Repo

## Author

Darin.Schulte@colostate.edu

This is to introduce you to Dr. Darin  Schulte (CCed).  Darin has the VegET Python  GEE code on Github. He will share the site next week.

For now, please exchange notes and collaborate as you see fit to advance the implementation of VegET on the Pangeo framework. This is an exciting step towards integrating land cover and hydrologic modeling.


## Collaboration Obstacles

CHS is only available inside the USGS networks of VPN Access

### Mitigations

1. Credential every collaborator
2. ```Replicate``` a smaller set of data and aux data into GA buckets for refining/rewriting code to use xarrays
3. Then deploy this in CHS with the known CHS caveats


### CHS TIC Cartoon

![tic](https://raw.githubusercontent.com/tonybutzer/assets/master/et/TIC_the_thing_that_makes_your_internet_suck.PNG)
