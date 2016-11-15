#' higher level error wrappers
#'
#' @export
#' @param x the result of a call via \pkg{crul}, \pkg{curl}, or \pkg{httr}
#' @inheritParams Error
#' \code{\link{Error}} for details.
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
error_http <- function(x, behavior = "stop", message_template) {
  UseMethod("error_http")
}
error_http_ <- function(x, behavior = "stop", message_template) {
  tmp <- Error$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
error_http.default <- function(x, behavior = "stop", message_template) {
  stop("no 'error_http' method for ", class(x), call. = FALSE)
}
#' @export
error_http.response <- error_http_
#' @export
error_http.HttpResponse <- error_http_
#' @export
error_http.list <- error_http_
