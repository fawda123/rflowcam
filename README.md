# README

This is a little package for working with FlowCAM data.

The development version of this package can be installed from GitHub:

```r
install.packages('devtools')
library(devtools)
install_github('fawda123/rflowcam')
library(rflowcam)
```
Try importing a data file:



```r
fl_in <- system.file('sample_data.lst', package = 'rflowcam')
dat <- import_flowcam(fl_in)
dat
```

```
## Source: local data frame [7,937 x 57]
## 
##    id image_x image_y image_w image_h src_x src_y src_image cal_image ppc
## 1   1       0       0      25      75   978   641       261         1   1
## 2   2      27       0      37      53   242   372       348         1   1
## 3   3      66       0      32      31   545    20       371         1   1
## 4   4     100       0      97     136   650   767       402         1   1
## 5   5     199       0      76     106  1107    84       550         1   1
## 6   6     277       0      45      39   199   671       618         1   1
## 7   7     324       0     232     149   363   795       621         1   1
## 8   8     558       0      25      38   476   236       906         1   1
## 9   9     585       0     181     102   340   161      1020         1   1
## 10 10     768       0      41      36   941   131      1079         1   1
## .. ..     ...     ...     ...     ...   ...   ...       ...       ... ...
## Variables not shown: camera (dbl), cal_const (dbl), fringe_size (dbl),
##   raw_area (dbl), raw_feret_max (dbl), raw_feret_min (dbl), raw_feret_mean
##   (dbl), raw_perimeter (dbl), raw_convex_perimeter (dbl), abd_area (dbl),
##   abd_diameter (dbl), length (dbl), width (dbl), esd_diameter (dbl),
##   aspect_ratio (dbl), perimeter (dbl), convex_perimeter (dbl), intensity
##   (dbl), sigma_intensity (dbl), sum_intensity (dbl), compactness (dbl),
##   elongation (dbl), roughness (dbl), edge_gradient (dbl), circle_fit
##   (dbl), symmetry (dbl), circularity_hu (dbl), intensity_calimage (dbl),
##   raw_convex_hull_area (dbl), raw_filled_area (dbl), filled_area (dbl),
##   feret_max_angle (dbl), feret_min_angle (dbl), avg_red (dbl), avg_green
##   (dbl), avg_blue (dbl), ch1_peak (dbl), ch1_width (dbl), ch1_area (dbl),
##   ch2_peak (dbl), ch2_width (dbl), ch2_area (dbl), ch3_peak (dbl),
##   ch3_width (dbl), ch3_area (dbl), timestamp (time), collage_file (chr)
```
