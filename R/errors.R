#' Error class
#'
#' @export
#' @param name Name of the error
#' @param behavior Behavior of the error. See Details
#' @details
#' \strong{Methods}
#' \describe{
#'  \item{\code{}}
#' }
#'
#' @section behavior options:
#' \itemize{
#'  \item stop
#'  \item warning
#'  \item message
#'  \item function
#' }
#' @examples \dontrun{
#' (x <- Error$new(name = "hello"))
#' (y <- Error$new(name = "hello", behavior = function(x) x^2))
#' (z <- Error$new(name = "hello", message_template = "{{status}} - {{message}}"))
#' }
Error <- R6::R6Class(
  "Error",
  public = list(
    name = NULL,
    behavior = "stop",
    message_template = NULL,

    initialize = function(name, behavior, message_template) {
      if (!missing(behavior)) self$behavior <- behavior
      self$name <- name
      if (!missing(message_template)) self$message_template <- message_template
    },

    print = function(...) {
      cat(paste0("<HTTP Error> ", self$name), sep = "\n")
      cat(paste0("  behavior: ", self$behavior), sep = "\n")
      cat(paste0("  message_template: ", self$message_template), sep = "\n")
      invisible()
    }
  )
)
