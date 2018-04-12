#' @param behavior Behavior of the error. See Details
#' @param message_template A message template. optional. use whisker
#' templating. names to use are: reason and status. use in template
#' like \code{\{\{reason\}\}} and  \code{\{\{status\}\}}. Note that
#' \code{\{\{message\}\}} that is used in \code{message_template_verbose}
#' will be ignored here.
#'
#' @section behavior parameter options:
#' \itemize{
#'  \item stop - use \code{stop}
#'  \item warning - use \code{warning}
#'  \item message - use \code{message}
#'  \item auto - toggle between \code{stop} and \code{message} depending
#'  on the HTTP status code series. Defaults will be:
#'  \itemize{
#'   \item 1xx: \code{message}
#'   \item 2xx: \code{message}
#'   \item 3xx: \code{message}
#'   \item 4xx: \code{stop}
#'   \item 5xx: \code{stop}
#'  }
#' }
#' 
#' Of course, you can always override the defaults.
