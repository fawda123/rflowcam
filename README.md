## rflowcam

This is a little package for working with FlowCAM data.

The development version of this package can be installed from GitHub:

```
install.packages('devtools')
library(devtools)
install_github('fawda123/rflowcam')
library(rflowcam)
```

Try importing a data file:

#' fl_in <- system.file('P02_Jan2015.lst', package = 'rflowcam')
#' dat <- import_flowcam(fl_in)
#' dat
See the documentation for available functions and examples.
