#' Find error classes
#'
#' @export
#' @param status_code (numeric,integer) A status code
#' @seealso \code{\link[fauxpas]{Error}}, \code{\link[fauxpas]{Error-Classes}}
#' @return an object of class \code{R6ClassGenerator}. call \code{$new()}
#' to initialize a new instance
#' @examples
#' find_error_class(414)
#' find_error_class(418)
#' find_error_class(505)
#'
#' # initialize the class
#' find_error_class(418)$new()
#'
#' # not found
#' \dontrun{find_error_class(999)}
find_error_class <- function(status_code) {
  codes <- vapply(fauxpas_env$http_children,
                  function(z) z$public_fields$status_code, 1)
  mtch <- which(status_code == codes)
  if (length(mtch) == 0) stop("no method found for ", status_code)
  fauxpas_env$http_children[[which(status_code == codes)]]
}
