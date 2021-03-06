% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/import_flowcam.R
\name{import_flowcam}
\alias{import_flowcam}
\title{Import raw .lst data}
\usage{
import_flowcam(fl_in, times = TRUE, tzone = "America/Regina")
}
\arguments{
\item{fl_in}{chr string of file name path}

\item{times}{logical indicating if timestamp column is converted to POSIXct, default \code{TRUE}}

\item{tzone}{chr string of default time zone if \code{times = TRUE}}
}
\value{
a \code{\link[dplyr]{tbl}} of formatted FlowCAM data with 57 columns
}
\description{
Import raw .lst data
}
\details{
All columns are converted to numeric values on import, except the timestamp and collage_file columns.  The default behavior is to convert the timestamp column to POSIXct.  Note that resolution of the timestamp is lost because seconds are rounded to integer values.  The default timezone in \code{tzone} does not consider daylight savings.
}
\examples{
##
fl_in <- system.file('sample_data.lst', package = 'rflowcam')
dat <- import_flowcam(fl_in)
dat
}

