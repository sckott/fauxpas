#' higher level error wrappers
#'
#' @export
#' @param x the result of a call via \pkg{crul}, \pkg{curl}, or \pkg{httr}
#' @param behavior Behavior of the error. See \code{\link{Error}}
#' @param message_template A message template, not working yet
#'
#' @examples
#' if (requireNamespace("crul")) {
#'  library("crul")
#'  res <- HttpClient$new("https://httpbin.org/status/418")$get()
#'  \dontrun{error_http(res)}
#'  error_http(res, behavior = "warning")
#'  error_http(res, behavior = "message")
#'
#'  res <- HttpClient$new("https://httpbin.org/status/414")$get()
#'  \dontrun{error_414(res)}
#'  error_http(res, behavior = "warning")
#'  error_http(res, behavior = "message")
#'
#'  res <- HttpClient$new("https://httpbin.org/asdfafadsf")$get()
#'  \dontrun{error_404(res)}
#'  error_http(res, behavior = "warning")
#'  error_http(res, behavior = "message")
#' }
#'
#' if (requireNamespace("curl")) {
#'  library("curl")
#'  h <- curl::new_handle()
#'  curl::handle_setopt(h)
#'  resp <- curl::curl_fetch_memory("https://httpbin.org/status/418", h)
#'  \dontrun{error_http(resp)}
#'  error_http(res, behavior = "warning")
#'  error_http(res, behavior = "message")
#' }
#'
#' if (requireNamespace("httr")) {
#'  library("httr")
#'  res <- GET("https://httpbin.org/status/418")
#'  \dontrun{error_http(res)}
#'  error_http(res, behavior = "warning")
#'  error_http(res, behavior = "message")
#' }
error_http <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_http")
}
error_http_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- Error$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
error_http.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_http' method for ", class(x), call. = FALSE)
}
#' @export
error_http.response <- error_http_
#' @export
error_http.HttpResponse <- error_http_
#' @export
error_http.list <- error_http_

# 101 ----------------------
error_101_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestNotFound$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_101 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_101")
}
#' @export
error_101.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_101' method for ", class(x), call. = FALSE)
}
#' @export
error_101.response <- error_101_
#' @export
error_101.HttpResponse <- error_101_
#' @export
error_101.list <- error_101_


# 404 ----------------------
error_404_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestNotFound$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_404 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_404")
}
#' @export
error_404.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_404' method for ", class(x), call. = FALSE)
}
#' @export
error_404.response <- error_404_
#' @export
error_404.HttpResponse <- error_404_
#' @export
error_404.list <- error_404_


# 414 ----------------------
error_414_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestURITooLong$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_414 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_414")
}
#' @export
error_414.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_414' method for ", class(x), call. = FALSE)
}
#' @export
error_414.response <- error_414_
#' @export
error_414.HttpResponse <- error_414_
#' @export
error_414.list <- error_414_
