error_child_generator <- function(class_name, mssg) {
  self <- super <- NULL
  R6::R6Class(
    class_name,
    inherit = Error,
    public = list(
      name = class_name,
      mssg = mssg,
      do_verbose = function(response) {
        super$do(response, self$mssg)
      }
    )
  )
}

#' Individual error classes
#'
#' These error classes are for each HTTP error, and inherit from
#' the \code{\link{Error}} class in this package.
#'
#' @details In addition to what's available in \code{\link{Error}},
#' these classes have a single variable \code{mssg} that is the very
#' verbose complete message describing the HTTP condition in detail.
#' You can include that message in your condition by using \code{do_verbose}
#' (see below)
#'
#' \strong{Methods}
#' \itemize{
#'   \item \code{do_verbose(response)}
#'   \code{response} is any response from \pkg{crul}, \pkg{curl}, or \pkg{httr}
#'   Execute condition, whether it be message, warning, error, or your
#'   own custom function.
#' }
#'
#' @section Functions:
#' \itemize{
#'  \item \code{\link{HTTPRequestURITooLong}}
#'  \item \code{\link{HTTPRequestNotFound}}
#' }
#'
#' @examples
#' if (requireNamespace("crul")) {
#'  library("crul")
#'  res <- HttpClient$new("https://httpbin.org/status/418")$get()
#'  x <- HTTPRequestURITooLong$new(behavior = "stop")
#'  \dontrun{
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#' }
#'
#' @format NULL
#' @usage NULL
#' @name Error-Classes
NULL

#' @export
#' @rdname Error-Classes
HTTPContinue <- error_child_generator(
  class_name = "HTTPContinue", mssg = mssgs[["HTTPContinue"]])

#' @export
#' @rdname Error-Classes
HTTPSwitchProtocol <- error_child_generator(
  class_name = "HTTPSwitchProtocol", mssg = mssgs[["HTTPSwitchProtocol"]])

#' @export
#' @rdname Error-Classes
HTTPOK <- error_child_generator(
  class_name = "HTTPOK", mssg = mssgs[["HTTPOK"]])

#' @export
#' @rdname Error-Classes
HTTPCreated <- error_child_generator(
  class_name = "HTTPCreated", mssg = mssgs[["HTTPCreated"]])

#' @export
#' @rdname Error-Classes
HTTPAccepted <- error_child_generator(
  class_name = "HTTPAccepted", mssg = mssgs[["HTTPAccepted"]])

#' @export
#' @rdname Error-Classes
HTTPNonAuthoritativeInformation <- error_child_generator(
  class_name = "HTTPNonAuthoritativeInformation", mssg = mssgs[["HTTPNonAuthoritativeInformation"]])

#' @export
#' @rdname Error-Classes
HTTPNoContent <- error_child_generator(
  class_name = "HTTPNoContent", mssg = mssgs[["HTTPNoContent"]])

#' @export
#' @rdname Error-Classes
HTTPResetContent <- error_child_generator(
  class_name = "HTTPResetContent", mssg = mssgs[["HTTPResetContent"]])

#' @export
#' @rdname Error-Classes
HTTPPartialContent <- error_child_generator(
  class_name = "HTTPPartialContent", mssg = mssgs[["HTTPPartialContent"]])

#' @export
#' @rdname Error-Classes
HTTPMultipleChoices <- error_child_generator(
  class_name = "HTTPMultipleChoices", mssg = mssgs[["HTTPMultipleChoices"]])

#' @export
#' @rdname Error-Classes
HTTPMovedPermanently <- error_child_generator(
  class_name = "HTTPMovedPermanently", mssg = mssgs[["HTTPMovedPermanently"]])

#' @export
#' @rdname Error-Classes
HTTPFound <- error_child_generator(
  class_name = "HTTPFound", mssg = mssgs[["HTTPFound"]])

#' @export
#' @rdname Error-Classes
HTTPSeeOther <- error_child_generator(
  class_name = "HTTPSeeOther", mssg = mssgs[["HTTPSeeOther"]])

#' @export
#' @rdname Error-Classes
HTTPNotModified <- error_child_generator(
  class_name = "HTTPNotModified", mssg = mssgs[["HTTPNotModified"]])

#' @export
#' @rdname Error-Classes
HTTPRequestURITooLong <- error_child_generator(
  class_name = "HTTPRequestURITooLong", mssg = mssgs[["HTTPRequestURITooLong"]])

#' @export
#' @rdname Error-Classes
HTTPRequestNotFound <- error_child_generator(
  class_name = "HTTPRequestNotFound", mssg = mssgs[["HTTPRequestNotFound"]])
