#' Error class
#'
#' @export
#' @param behavior Behavior of the error. See Details
#' @param call.	(logical) indicating if the call should become part
#' of the error message. Default: \code{FALSE}
#' @details
#' \strong{Methods}
#' \describe{
#'  \item{\code{xx}}
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
#' @examples \dontrun{
#' library("httr")
#'
#' (x <- Error$new())
#' (y <- Error$new(fun = function(x) x^2))
#' (z <- Error$new(message_template = "{{status}} - {{message}}"))
#'
#' res <- GET("https://httpbin.org/status/418")
#'
#' # stop
#' (x <- Error$new(behavior = "stop"))
#' x$do(res)
#'
#' # warn
#' (x <- Error$new(behavior = "warning"))
#' x$do(res)
#'
#' x <- HTTPRequestURITooLong$new(behavior = "stop")
#' res <- GET("https://httpbin.org/status/414")
#' x$do(res)
#' }
Error <- R6::R6Class(
  "Error",
  #portable = FALSE,
  public = list(
    behavior = NULL,
    behavior_name = NULL,
    behavior_type = NULL,
    fun = NULL,
    call. = NULL,
    message_template = NULL,

    initialize = function(behavior = "stop", behavior_name, fun, call. = FALSE, message_template) {
      #if (!missing(behavior)) {
        # if (!inherits(behavior, "function")) {
        #   if (!behavior %in% c('stop', 'warning', 'message')) {
        #     stop("'behavior' must be one of stop, warning, message, or a function", call. = FALSE)
        #     if (is.character(behavior)) {
        #
        #     }
        #   }
        # }
        stopifnot(inherits(behavior, "character"))
        #self$behavior_name <- deparse(substitute(behavior))
        if (!missing(fun)) self$fun <- fun
        self$behavior <- behavior
        self$behavior_type <-
          switch(self$behavior, stop = "error", warning = "warning", message = "message")
      #}
      if (!missing(call.)) self$call. <- call.
      if (!missing(message_template)) self$message_template <- message_template
    },

    print = function(...) {
      cat("<HTTP Error>", sep = "\n")
      cat(paste0("  behavior: ", self$behavior), sep = "\n")
      cat(paste0("  message_template: ", self$message_template), sep = "\n")
      invisible()
    },

    do = function(response, mssg = "") {
      if (self$behavior_type %in% c('error', 'warning', 'message')) {
        call <- sys.call(-1)
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
      status <- status_code(x)
      reason <- http_status(status)$reason
      message <- sprintf("%s (HTTP %d).%s", reason, status, mssg)
      status_type <- (status %/% 100) * 100
      http_class <- paste0("http_", unique(c(status, status_type,
                                             "error")))
      structure(list(message = message, call = call), class = c(http_class,
                                                                type, "condition"))
    }

  )
)

#' @export
HTTPRequestURITooLong <- R6::R6Class(
  "HTTPRequestURITooLong",
  inherit = Error,
  public = list(
    mssg = "\n The server is refusing to service the request because the Request-URI is
    longer than the server is willing to interpret. This rare condition is only likely
    to occur when a client has improperly converted a POST request to a GET request
    with long query information, when the client has descended into a URI black hole
    of redirection (e.g., a redirected URI prefix that points to a suffix of itself),
    or when the server is under attack by a client attempting to exploit security
    holes present in some servers using fixed-length buffers for reading or
    manipulating the Request-URI.",

    print = function(...) {
      cat("<HTTPRequestURITooLong> ", sep = "\n")
      cat(paste0("  behavior: ", self$behavior), sep = "\n")
      cat(paste0("  message_template: ", self$message_template), sep = "\n")
      invisible()
    },

    do = function(response) {
      super$do(response, self$mssg)
    }
  )
)
