#' Error class
#'
#' @export
#' @template params
#' @param call.	(logical) indicating if the call should become part
#' of the error message. Default: \code{FALSE}
#'
#' @details
#' \strong{Methods}
#' \itemize{
#'   \item \code{do(response, mssg)}
#'   Execute condition, whether it be message, warning, or error.
#'   \item \code{set_behavior(behavior)}
#'   Set behavior, same as setting behavior on initializing with \code{$new()}
#' }
#'
#' @format NULL
#' @usage NULL
#'
#' @seealso \code{\link[fauxpas]{http}}, \code{\link[fauxpas]{Error-Classes}}
#'
#' @examples
#' Error$new()
#' # reset behavior
#' (z <- Error$new())
#' z$set_behavior("warning")
#' z
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
#'  # do vs. do_verbose
#'  x <- HTTPRequestURITooLong$new(behavior = "stop")
#'  res <- HttpClient$new("https://httpbin.org/status/414")$get()
#'  \dontrun{
#'  http414(res)
#'  ## with template
#'  http414(res, message_template = "{{status}}\n  --> {{reason}}")
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#'
#'  # service unavailable
#'  x <- HTTPServiceUnavailable$new(behavior = "stop")
#'  res <- HttpClient$new("https://httpbin.org/status/503")$get()
#'  \dontrun{
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#'
#'  # message template
#'  y <- Error$new(message_template = "{{reason}} ............ {{status}}")
#'  res <- HttpClient$new("https://httpbin.org/status/418")$get()
#'  \dontrun{
#'  y$do(res)
#'  }
#'
#'  yy <- Error$new(message_template = "{{status}}\n  --> {{reason}}")
#'  \dontrun{
#'  yy$do(res)
#'  }
#'
#'  ## with verbose message
#'  yy <- HTTPBadGateway$new(
#'    message_template = "HTTP({{status}}): {{reason}}\n  {{message}}"
#'  )
#'  \dontrun{
#'  yy$do_verbose(res)
#'  }
#' }
Error <- R6::R6Class(
  "Error",
  portable = TRUE,
  public = list(
    name = 'HTTP Error',
    behavior = "stop",
    call. = FALSE,
    message_template = NULL,

    initialize = function(behavior = "stop", call. = FALSE, message_template) {
      stopifnot(inherits(behavior, "character"))
      if (!behavior %in% c('stop', 'warning', 'message')) {
        stop("'behavior' must be one of stop, warning, or message", call. = FALSE)
      }
      self$behavior <- behavior
      private$behavior_type <- switch(
        self$behavior, stop = "error", warning = "warning", message = "message")
      if (!missing(call.)) self$call. <- call.
      if (!missing(message_template)) {
        if (!is.null(message_template)) {
          if (!inherits(message_template, "character")) {
            stop("'message_template' must be of class character", call. = FALSE)
          }
          self$message_template <- message_template
        }
      }
      if (missing(message_template)) {
        self$message_template <- "{{reason}} (HTTP {{status}})."
      }
    },

    print = function(...) {
      cat(sprintf("<%s>", self$name), sep = "\n")
      cat(paste0("  behavior: ", self$behavior), sep = "\n")
      cat(paste0("  message_template: ", self$message_template), sep = "\n")
      invisible()
    },

    do = function(response, mssg = "", template = self$message_template) {
      call <- if (self$call.) sys.call(-1) else NULL
      eval(parse(text = self$behavior))(
        private$make_condition(response, private$behavior_type, call, mssg, template)
      )
    },

    set_behavior = function(behavior) {
      stopifnot(inherits(behavior, "character"))
      if (!behavior %in% c('stop', 'warning', 'message')) {
        stop("'behavior' must be one of stop, warning, or message", call. = FALSE)
      }
      self$behavior <- behavior
      # and set behavior_type
      private$behavior_type <- switch(
        self$behavior, stop = "error", warning = "warning", message = "message")
    }
  ),

  private = list(
    behavior_type = NULL,
    make_condition = function(x, type, call, mssg, template) {
      status <- private$fetch_status(x)
      reason <- httpcode::http_code(status)$message
      xx <- list(reason = reason, status = status, message = mssg)
      message <- whisker::whisker.render(template, xx)
      status_type <- (status %/% 100) * 100
      http_class <- paste0("http_", unique(c(status, status_type,
                                             "error")))
      structure(list(message = message, call = call),
                class = c(http_class, type, "condition"))
    },

    fetch_status = function(x) {
      switch(
        class(x)[1],
        response = x$status_code, # httr
        Response = x$status_code, # webmockr
        VcrResponse = x$stats$status_code, # vcr
        HttpResponse = x$status_code, # crul
        list = x$status_code # curl
      )
    }

  )
)
