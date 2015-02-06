######
#' Import raw .lst data
#'
#' Import raw .lst data
#'
#' @param fl_in chr string of file name path
#' @param times logical indicating if timestamp column is converted to POSIXct, default \code{TRUE}
#' @param tzone chr string of default time zone if \code{times = TRUE}
#'
#' @details
#' All columns are converted to numeric values on import, except the timestamp and collage_file columns.  The default behavior is to convert the timestamp column to POSIXct.  Note that resolution of the timestamp is lost because seconds are rounded to integer values.  The default timezone in \code{tzone} does not consider daylight savings.
#'
#' @export
#'
#' @import dplyr
#'
#' @return a \code{\link[dplyr]{tbl}} of formatted FlowCAM data with 57 columns
#'
#' @examples
#' ##
#' fl_in <- system.file('sample_data.lst', package = 'rflowcam')
#' dat <- import_flowcam(fl_in)
#' dat
import_flowcam <- function(fl_in, times = TRUE, tzone = 'America/Regina'){

  # stop if incorrect file
  if(!grepl('\\.lst$', fl_in))
    stop('Input file must be .lst')

  # import
  raw <- scan(fl_in, what = 'raw', sep = '|')

  # headers w/ data type removed
  hds <- which(raw %in% 'string')
  dat_strt <- hds + 1
  hds <- raw[1:hds]
  hds <- hds[(which(hds %in% 'id')):length(hds)]
  hds <- hds[seq(1, length(hds), by = 2)]

  # file data
  dat <- raw[dat_strt:length(raw)] %>%
    matrix(ncol = 57, byrow = T) %>%
    data.frame(stringsAsFactors = F)

  # convert all but last two columns to numeric
  num_cols <- 1:(ncol(dat) - 2)
  dat[, num_cols] <- apply(dat[, num_cols], 2, as.numeric)

  # convert timestamp to posix
  if(times)
    dat[, max(num_cols) + 1] <- dat[, max(num_cols) + 1] %>%
      gsub('T', ' ', .) %>%
      as.POSIXct(tz = tzone, format = '%Y-%m-%d %H:%M:%S')

  # format and return output
  names(dat) <- hds
  dat <- as.tbl(dat)
  return(dat)

}
