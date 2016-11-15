#' @param behavior Behavior of the error. See Details
#' @param message_template A message template. optional. use whisker
#' templating. names to use are: reason, status, message. use in template
#' like \code{\{\{reason\}\}}, \code{\{\{status\}\}}, and
#' \code{\{\{message\}\}}
#'
#' @section behavior parameter options:
#' \itemize{
#'  \item stop - stop on error
#'  \item warning - warning on error
#'  \item message - message on error
#' }
