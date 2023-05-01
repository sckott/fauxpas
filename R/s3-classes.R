#' higher level error wrappers
#'
#' @export
#' @param response The result of a call via \pkg{crul}, \pkg{curl}, or
#' \pkg{httr}
#' @param muffle (logical) whether to not respond when status codes
#' in 1xx-3xx series. Default: \code{FALSE}
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
#' @note These \code{http*} methods only use \code{$do} and not
#' \code{$do_verbose}.
#'
#' @examples
#' if (requireNamespace("crul")) {
#'  library("crul")
#'  res <- HttpClient$new("https://httpbin.org/status/418")$get()
#'  \dontrun{
#'    http(res)
#'    http(res, behavior = "warning")
#'  }
#'  http(res, behavior = "message")
#'
#'  res <- HttpClient$new("https://httpbin.org/status/414")$get()
#'  \dontrun{
#'    http414(res)
#'    http(res, behavior = "warning")
#'  }
#'  http(res, behavior = "message")
#'
#'  res <- HttpClient$new("https://httpbin.org/asdfafadsf")$get()
#'  \dontrun{
#'    http404(res)
#'    http(res, behavior = "warning")
#'  }
#'  http(res, behavior = "message")
#' }
#'
#' if (requireNamespace("curl")) {
#'  library("curl")
#'  h <- curl::new_handle()
#'  curl::handle_setopt(h)
#'  res <- curl::curl_fetch_memory("https://httpbin.org/status/418", h)
#'  \dontrun{
#'    http(res)
#'    http(res, behavior = "warning")
#'  }
#'  http(res, behavior = "message")
#' }
#'
#' if (requireNamespace("httr")) {
#'  library("httr")
#'  res <- GET("https://httpbin.org/status/418")
#'  \dontrun{
#'    http(res)
#'    http(res, behavior = "warning")
#'  }
#'  http(res, behavior = "message")
#' }
#'
#' # muffle responses
#' if (requireNamespace("crul")) {
#'  library("crul")
#'  res201 <- HttpClient$new("https://httpbin.org")$get("status/201")
#'  res404 <- HttpClient$new("https://httpbin.org")$get("status/404")
#'  # status codes < 300 CAN be muffled - i.e., return the http response object
#'  http(res201, muffle = TRUE)
#'  # status codes > 300 CAN NOT be muffled - i.e., return the http response object
#'  \dontrun{
#'  http(res404, muffle = TRUE)
#'  }
#' }
http <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http")
}
http_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- Error$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
http.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http.response <- http_
#' @export
http.HttpResponse <- http_
#' @export
http.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
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

toggle_behavior <- function(status, behavior) {
  stopifnot(inherits(behavior, "character"))
  if (!behavior %in% c('stop', 'warning', 'message', 'auto')) {
    stop("'behavior' must be one of stop, warning, message, or auto",
      call. = FALSE)
  }
  switch(
    behavior,
    auto = {
      status_type <- as.character((status %/% 100) * 100)
      switch(
        status_type,
        '100' = "message",
        '200' = "message",
        '300' = "warning",
        '400' = "stop",
        '500' = "stop"
      )
    },
    stop = "stop",
    warning = "warning",
    message = "message"
  )
}
