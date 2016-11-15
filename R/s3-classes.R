#' higher level error wrappers
#'
#' @export
#' @param response The result of a call via \pkg{crul}, \pkg{curl}, or
#' \pkg{httr}
#' @template params
#'
#' @seealso \code{\link{Error}}, \code{\link[fauxpas]{Error-Classes}}
#'
#' @examples
#' if (requireNamespace("crul")) {
#'  library("crul")
#'  res <- HttpClient$new("https://httpbin.org/status/418")$get()
#'  \dontrun{http(res)}
#'  http(res, behavior = "warning")
#'  http(res, behavior = "message")
#'
#'  res <- HttpClient$new("https://httpbin.org/status/414")$get()
#'  \dontrun{http414(res)}
#'  http(res, behavior = "warning")
#'  http(res, behavior = "message")
#'
#'  res <- HttpClient$new("https://httpbin.org/asdfafadsf")$get()
#'  \dontrun{http404(res)}
#'  http(res, behavior = "warning")
#'  http(res, behavior = "message")
#' }
#'
#' if (requireNamespace("curl")) {
#'  library("curl")
#'  h <- curl::new_handle()
#'  curl::handle_setopt(h)
#'  resp <- curl::curl_fetch_memory("https://httpbin.org/status/418", h)
#'  \dontrun{http(resp)}
#'  http(res, behavior = "warning")
#'  http(res, behavior = "message")
#' }
#'
#' if (requireNamespace("httr")) {
#'  library("httr")
#'  res <- GET("https://httpbin.org/status/418")
#'  \dontrun{http(res)}
#'  http(res, behavior = "warning")
#'  http(res, behavior = "message")
#' }
http <- function(response, behavior = "stop", message_template) {
  UseMethod("http")
}
http_ <- function(response, behavior = "stop", message_template) {
  tmp <- Error$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
http.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http' method for ", class(response), call. = FALSE)
}
#' @export
http.response <- http_
#' @export
http.HttpResponse <- http_
#' @export
http.list <- http_
