#' higher level error wrappers
#'
#' @export
#' @param x the result of a call via httr, curl, or RCurl
#' @param behavior Behavior of the error. See \code{\link{Error}}
#' @param message_template A message template, not working yet
#' @examples \dontrun{
#' res <- GET("https://httpbin.org/status/418")
#' error_http(res)
#'
#' res <- GET("https://httpbin.org/status/414")
#' error_414(res)
#' }
error_http <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_http")
}

#' @export
error_http.response <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- Error$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}


#' @export
#' @rdname error_http
error_414 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_http")
}

#' @export
#' @rdname error_http
error_414 <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestURITooLong$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
