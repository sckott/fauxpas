#' @param behavior Behavior of the error. See Details
#' @param message_template A message template. optional. use whisker
#' templating. names to use are: reason and status. use in template
#' like \code{\{\{reason\}\}} and  \code{\{\{status\}\}}. Note that
#' \code{\{\{message\}\}} that is used in \code{message_template_verbose}
#' will be ignored here.
#'
#' @section behavior parameter options:
#' \itemize{
#'  \item stop - stop on error
#'  \item warning - warning on error
#'  \item message - message on error
#' }
