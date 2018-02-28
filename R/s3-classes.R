#' higher level error wrappers
#'
#' @export
#' @param response The result of a call via \pkg{crul}, \pkg{curl}, or
#' \pkg{httr}
#' @template params
#'
#' @seealso \code{\link{Error}}, \code{\link[fauxpas]{Error-Classes}}
#'
#' @section using package \pkg{curl}:
#' curl reponses are simple lists, so we have little to go on to make sure
#' it's a response from the \pkg{curl} package. We check for list names
#' internally but of course you could pass in a list with the right named
#' elements, while the values are complete nonsense, in which case
#' we'll probably fail badly. There's not much we can do.
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
#'  res <- curl::curl_fetch_memory("https://httpbin.org/status/418", h)
#'  \dontrun{http(res)}
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
  stop("no 'http' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http.response <- http_
#' @export
http.HttpResponse <- http_
#' @export
http.list <- function(response, behavior = "stop", message_template) {
  check_curl_list(response)
  http_(response, behavior, message_template)
}

check_curl_list <- function(x) {
  # attempt to make sure list is from curl
  ## any names?
  if (length(names(x)) == 0) {
    stop('curl response list must have named elements - see docs')
  }
  ## the right names?
  if (!all(c('url', 'status_code', 'headers', 'modified', 'times') %in%
           names(x))) {
    stop("found list names '", paste0(names(x), collapse = ", "),
         "' - indicating input not likely a curl response - see docs")
  }
  ## the right classes
  stopifnot(inherits(x$url, "character"))
  stopifnot(inherits(x$headers, "raw"))
  stopifnot(inherits(x$times, "numeric"))
  ### sometimes content won't be present
  if (!is.null(x$content)) stopifnot(inherits(x$content, "raw"))
}
