#' Error class
#'
#' @export
#' @param behavior Behavior of the error. See Details
#' @param call.	(logical) indicating if the call should become part
#' of the error message. Default: \code{FALSE}
#' @details
#' \strong{Methods}
#' \itemize{
#'   \item \code{do}
#'   Execute condition, whether it be message, warning, error, or your
#'   own custom function.
#' }
#'
#' @section behavior options:
#' \itemize{
#'  \item stop - stop on error
#'  \item warning - warning on error
#'  \item message - message on error
#'  \item function - use function on error
#' }
#' @format NULL
#' @usage NULL
#' @examples
#' # create error classes
#' (x <- Error$new())
#' (y <- Error$new(fun = function(x) x^2))
#' (z <- Error$new(message_template = "{{status}} - {{message}}"))
#'
#' if (requireNamespace("crul")) {
#'  library("crul")
#'  res <- HttpClient$new("https://httpbin.org/status/418")$get()
#'
#'  # stop
#'  (x <- Error$new(behavior = "stop"))
#'  \dontrun{x$do(res)}
#'
#'  # warn
#'  (x <- Error$new(behavior = "warning"))
#'  x$do(res)
#'
#'  x <- HTTPRequestURITooLong$new(behavior = "stop")
#'  res <- HttpClient$new("https://httpbin.org/status/414")$get()
#'  \dontrun{
#'  error_414(res)
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#' }
Error <- R6::R6Class(
  "Error",
  #portable = FALSE,
  public = list(
    name = 'HTTP Error',
    behavior = NULL,
    behavior_name = NULL,
    behavior_type = NULL,
    fun = NULL,
    call. = FALSE,
    message_template = NULL,

    initialize = function(behavior = "stop", behavior_name, fun,
                          call. = FALSE, message_template) {

      stopifnot(inherits(behavior, "character"))
      if (!missing(fun)) self$fun <- fun
      self$behavior <- behavior
      if (!self$behavior %in% c('stop', 'warning', 'message', 'function')) {
        stop("'behavior' must be one of stop, warning, message, or a function", call. = FALSE)
      }
      self$behavior_type <- switch(
        self$behavior, stop = "error", warning = "warning", message = "message")
      if (!missing(call.)) self$call. <- call.
      if (!missing(message_template)) self$message_template <- message_template
    },

    print = function(...) {
      cat(sprintf("<%s>", self$name), sep = "\n")
      cat(paste0("  behavior: ", self$behavior), sep = "\n")
      cat(paste0("  message_template: ", self$message_template), sep = "\n")
      invisible()
    },

    do = function(response, mssg = "") {
      if (self$behavior_type %in% c('error', 'warning', 'message')) {
        call <- if (self$call.) sys.call(-1) else NULL
        eval(parse(text = self$behavior))(
          private$make_condition(response, self$behavior_type, call, mssg)
        )
      } else {
        self$fun(private$make_condition(response))
      }
    }
  ),

  private = list(

    make_condition = function(x, type, call, mssg) {
      status <- private$fetch_status(x)
      reason <- httpcode::http_code(status)$message
      message <- sprintf("%s (HTTP %d).%s", reason, status, mssg)
      status_type <- (status %/% 100) * 100
      http_class <- paste0("http_", unique(c(status, status_type,
                                             "error")))
      structure(list(message = message, call = call),
                class = c(http_class, type, "condition"))
    },

    fetch_status = function(x) {
      switch(
        class(x)[1],
        response = x$status_code,
        HttpResponse = x$status_code,
        list = x$status_code
      )
    }

  )
)
