`%||%` <- function(x, y) if (is.null(x)) y else x

gv <- function(x) {
  tryCatch(
    httpcode::http_code(x, TRUE)$verbose_explanation,
    error = function(e) NULL
  ) %||% ""
}

error_child_generator <- function(class_name, x) {
  self <- super <- NULL
  R6::R6Class(
    class_name,
    inherit = Error,
    public = list(
      name = class_name,
      status_code = x,
      mssg = gv(x),
      #message_template = "{{reason}} (HTTP {{status}}).\n - {{message}}",

      do_verbose = function(response) {
        super$do(response, self$mssg, "{{reason}} (HTTP {{status}}).\n - {{message}}")
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
#' @seealso \code{\link[fauxpas]{Error}}, \code{\link[fauxpas]{http}}
#'
#' @examples
#' if (requireNamespace("crul")) {
#'
#'  library("crul")
#'  res <- HttpClient$new("https://httpbin.org/status/414")$get()
#'  x <- HTTPRequestURITooLong$new()
#'  \dontrun{
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#'
#'  # behavior
#'  x <- HTTPRequestURITooLong$new(behavior = "warning")
#'  \dontrun{
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#'
#'  x <- HTTPRequestURITooLong$new(behavior = "message")
#'  \dontrun{
#'  x$do(res)
#'  x$do_verbose(res)
#'  }
#'
#'  # with message template
#'  x <- HTTPRequestURITooLong$new(
#'    message_template = "{{reason}} ............ {{status}}"
#'  )
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


# 100 ----------------------
#' @export
#' @rdname Error-Classes
HTTPContinue <- error_child_generator("HTTPContinue", 100)

#' @export
#' @rdname Error-Classes
HTTPSwitchProtocol <- error_child_generator("HTTPSwitchProtocol", 101)

#' @export
#' @rdname Error-Classes
HTTPProcessing <- error_child_generator("HTTPProcessing", 102)



# 200 ----------------------
#' @export
#' @rdname Error-Classes
HTTPOK <- error_child_generator("HTTPOK", 200)

#' @export
#' @rdname Error-Classes
HTTPCreated <- error_child_generator("HTTPCreated", 201)

#' @export
#' @rdname Error-Classes
HTTPAccepted <- error_child_generator("HTTPAccepted", 202)

#' @export
#' @rdname Error-Classes
HTTPNonAuthoritativeInformation <- error_child_generator(
  "HTTPNonAuthoritativeInformation", 203)

#' @export
#' @rdname Error-Classes
HTTPNoContent <- error_child_generator("HTTPNoContent", 204)

#' @export
#' @rdname Error-Classes
HTTPResetContent <- error_child_generator("HTTPResetContent", 205)

#' @export
#' @rdname Error-Classes
HTTPPartialContent <- error_child_generator("HTTPPartialContent", 206)

#' @export
#' @rdname Error-Classes
HTTPMultiStatus <- error_child_generator("HTTPMultiStatus", 207)

#' @export
#' @rdname Error-Classes
HTTPAlreadyReported <- error_child_generator("HTTPAlreadyReported", 208)

#' @export
#' @rdname Error-Classes
HTTPImUsed <- error_child_generator("HTTPImUsed", 226)


# 300 ----------------------
#' @export
#' @rdname Error-Classes
HTTPMultipleChoices <- error_child_generator("HTTPMultipleChoices", 300)

#' @export
#' @rdname Error-Classes
HTTPMovedPermanently <- error_child_generator("HTTPMovedPermanently", 301)

#' @export
#' @rdname Error-Classes
HTTPFound <- error_child_generator("HTTPFound", 302)

#' @export
#' @rdname Error-Classes
HTTPSeeOther <- error_child_generator("HTTPSeeOther", 303)

#' @export
#' @rdname Error-Classes
HTTPNotModified <- error_child_generator("HTTPNotModified", 304)

#' @export
#' @rdname Error-Classes
HTTPUseProxy <- error_child_generator("HTTPUseProxy", 305)

#' @export
#' @rdname Error-Classes
HTTPSwitchProxy <- error_child_generator("HTTPSwitchProxy", 306)

#' @export
#' @rdname Error-Classes
HTTPTemporaryRedirect <- error_child_generator("HTTPTemporaryRedirect", 307)

#' @export
#' @rdname Error-Classes
HTTPPermanentRedirect <- error_child_generator("HTTPPermanentRedirect", 308)




# 400 ----------------------
#' @export
#' @rdname Error-Classes
HTTPBadRequest <- error_child_generator("HTTPBadRequest", 400)

#' @export
#' @rdname Error-Classes
HTTPUnauthorized <- error_child_generator("HTTPUnauthorized", 401)

#' @export
#' @rdname Error-Classes
HTTPPaymentRequired <- error_child_generator("HTTPPaymentRequired", 402)

#' @export
#' @rdname Error-Classes
HTTPForbidden <- error_child_generator("HTTPForbidden", 403)

#' @export
#' @rdname Error-Classes
HTTPNotFound <- error_child_generator("HTTPNotFound", 404)

#' @export
#' @rdname Error-Classes
HTTPMethodNotAllowed <- error_child_generator("HTTPMethodNotAllowed", 405)

#' @export
#' @rdname Error-Classes
HTTPNotAcceptable <- error_child_generator("HTTPNotAcceptable", 406)

#' @export
#' @rdname Error-Classes
HTTPProxyAuthenticationRequired <- error_child_generator("HTTPProxyAuthenticationRequired", 407)

#' @export
#' @rdname Error-Classes
HTTPRequestTimeout <- error_child_generator("HTTPRequestTimeout", 408)

#' @export
#' @rdname Error-Classes
HTTPConflict <- error_child_generator("HTTPConflict", 409)

#' @export
#' @rdname Error-Classes
HTTPGone <- error_child_generator("HTTPGone", 410)

#' @export
#' @rdname Error-Classes
HTTPLengthRequired <- error_child_generator("HTTPLengthRequired", 411)

#' @export
#' @rdname Error-Classes
HTTPPreconditionFailed <- error_child_generator("HTTPPreconditionFailed", 412)

#' @export
#' @rdname Error-Classes
HTTPRequestEntityTooLarge <- error_child_generator("HTTPRequestEntityTooLarge", 413)

#' @export
#' @rdname Error-Classes
HTTPRequestURITooLong <- error_child_generator("HTTPRequestURITooLong", 414)

#' @export
#' @rdname Error-Classes
HTTPUnsupportedMediaType <- error_child_generator("HTTPUnsupportedMediaType", 415)

#' @export
#' @rdname Error-Classes
HTTPRequestRangeNotSatisfiable <- error_child_generator("HTTPRequestRangeNotSatisfiable", 416)

#' @export
#' @rdname Error-Classes
HTTPExpectationFailed <- error_child_generator("HTTPExpectationFailed", 417)

#' @export
#' @rdname Error-Classes
HTTPTeaPot <- error_child_generator("HTTPTeaPot", 418)

#' @export
#' @rdname Error-Classes
HTTPAuthenticationTimeout <- error_child_generator("HTTPAuthenticationTimeout", 419)

#' @export
#' @rdname Error-Classes
HTTPMethodFailure <- error_child_generator("HTTPMethodFailure", 420)

#' @export
#' @rdname Error-Classes
HTTPUnprocessableEntity <- error_child_generator("HTTPUnprocessableEntity", 422)

#' @export
#' @rdname Error-Classes
HTTPLocked <- error_child_generator("HTTPLocked", 423)

#' @export
#' @rdname Error-Classes
HTTPFailedDependency <- error_child_generator("HTTPFailedDependency", 424)

#' @export
#' @rdname Error-Classes
HTTPUnorderedCollection <- error_child_generator("HTTPUnorderedCollection", 425)

#' @export
#' @rdname Error-Classes
HTTPUpgradeRequired <- error_child_generator("HTTPUpgradeRequired", 426)

#' @export
#' @rdname Error-Classes
HTTPPreconditionRequired <- error_child_generator("HTTPPreconditionRequired", 428)

#' @export
#' @rdname Error-Classes
HTTPTooManyRequests <- error_child_generator("HTTPTooManyRequests", 429)

#' @export
#' @rdname Error-Classes
HTTPRequestHeaderFieldsTooLarge <- error_child_generator("HTTPRequestHeaderFieldsTooLarge", 431)

#' @export
#' @rdname Error-Classes
HTTPLoginTimeout <- error_child_generator("HTTPLoginTimeout", 440)

#' @export
#' @rdname Error-Classes
HTTPNoResponse <- error_child_generator("HTTPNoResponse", 444)

#' @export
#' @rdname Error-Classes
HTTPRetryWith <- error_child_generator("HTTPRetryWith", 449)

#' @export
#' @rdname Error-Classes
HTTPBlockedByWindowsParentalControls <- error_child_generator("HTTPBlockedByWindowsParentalControls", 450)

#' @export
#' @rdname Error-Classes
HTTPUnavailableForLegalReasons <- error_child_generator("HTTPUnavailableForLegalReasons", 451)

#' @export
#' @rdname Error-Classes
HTTPRequestHeaderTooLarge <- error_child_generator("HTTPRequestHeaderTooLarge", 494)

#' @export
#' @rdname Error-Classes
HTTPCertError <- error_child_generator("HTTPCertError", 495)

#' @export
#' @rdname Error-Classes
HTTPNoCert <- error_child_generator("HTTPNoCert", 496)

#' @export
#' @rdname Error-Classes
HTTPHTTPToHTTPS <- error_child_generator("HTTPHTTPToHTTPS", 497)

#' @export
#' @rdname Error-Classes
HTTPTokenExpiredInvalid <- error_child_generator("HTTPTokenExpiredInvalid", 498)

#' @export
#' @rdname Error-Classes
HTTPClientClosedRequest <- error_child_generator("HTTPClientClosedRequest", 499)



# 500 ----------------------

#' @export
#' @rdname Error-Classes
HTTPInternalServerError <- error_child_generator("HTTPInternalServerError", 500)

#' @export
#' @rdname Error-Classes
HTTPNotImplemented <- error_child_generator("HTTPNotImplemented", 501)

#' @export
#' @rdname Error-Classes
HTTPBadGateway <- error_child_generator("HTTPBadGateway", 502)

#' @export
#' @rdname Error-Classes
HTTPServiceUnavailable <- error_child_generator("HTTPServiceUnavailable", 503)

#' @export
#' @rdname Error-Classes
HTTPGatewayTimeout <- error_child_generator("HTTPGatewayTimeout", 504)

#' @export
#' @rdname Error-Classes
HTTPHTTPVersionNotSupported <- error_child_generator("HTTPHTTPVersionNotSupported", 505)

#' @export
#' @rdname Error-Classes
HTTPVariantAlsoNegotiates <- error_child_generator("HTTPVariantAlsoNegotiates", 506)

#' @export
#' @rdname Error-Classes
HTTPInsufficientStorage <- error_child_generator("HTTPInsufficientStorage", 507)

#' @export
#' @rdname Error-Classes
HTTPLoopDetected <- error_child_generator("HTTPLoopDetected", 508)

#' @export
#' @rdname Error-Classes
HTTPBandwidthLimitExceeded <- error_child_generator("HTTPBandwidthLimitExceeded", 509)

#' @export
#' @rdname Error-Classes
HTTPNotExtended <- error_child_generator("HTTPNotExtended", 510)

#' @export
#' @rdname Error-Classes
HTTPNetworkAuthenticationRequired <- error_child_generator("HTTPNetworkAuthenticationRequired", 511)

#' @export
#' @rdname Error-Classes
HTTPNetworkReadTimeoutError <- error_child_generator("HTTPNetworkReadTimeoutError", 598)

#' @export
#' @rdname Error-Classes
HTTPNetworkConnectTimeoutError <- error_child_generator("HTTPNetworkConnectTimeoutError", 599)



## all children
fauxpas_env <- new.env()
assign("http_children", list(
  HTTPContinue, HTTPSwitchProtocol, HTTPProcessing, HTTPOK, HTTPCreated, HTTPAccepted,
  HTTPNonAuthoritativeInformation, HTTPNoContent, HTTPResetContent, HTTPPartialContent,
  HTTPMultiStatus, HTTPAlreadyReported, HTTPImUsed, HTTPMultipleChoices, HTTPMovedPermanently,
  HTTPFound, HTTPSeeOther, HTTPNotModified, HTTPUseProxy, HTTPSwitchProxy,
  HTTPTemporaryRedirect, HTTPPermanentRedirect, HTTPBadRequest, HTTPUnauthorized,
  HTTPPaymentRequired, HTTPForbidden, HTTPNotFound, HTTPMethodNotAllowed, HTTPNotAcceptable,
  HTTPProxyAuthenticationRequired, HTTPRequestTimeout, HTTPConflict, HTTPGone, HTTPLengthRequired,
  HTTPPreconditionFailed, HTTPRequestEntityTooLarge, HTTPRequestURITooLong,
  HTTPUnsupportedMediaType, HTTPRequestRangeNotSatisfiable, HTTPExpectationFailed,
  HTTPTeaPot, HTTPAuthenticationTimeout, HTTPMethodFailure, HTTPUnprocessableEntity,
  HTTPLocked, HTTPFailedDependency, HTTPUnorderedCollection, HTTPUpgradeRequired,
  HTTPPreconditionRequired, HTTPTooManyRequests, HTTPRequestHeaderFieldsTooLarge,
  HTTPLoginTimeout, HTTPNoResponse, HTTPRetryWith, HTTPBlockedByWindowsParentalControls,
  HTTPUnavailableForLegalReasons, HTTPRequestHeaderTooLarge, HTTPCertError, HTTPNoCert,
  HTTPHTTPToHTTPS, HTTPTokenExpiredInvalid, HTTPClientClosedRequest, HTTPInternalServerError,
  HTTPNotImplemented, HTTPBadGateway, HTTPServiceUnavailable, HTTPGatewayTimeout,
  HTTPHTTPVersionNotSupported, HTTPVariantAlsoNegotiates, HTTPInsufficientStorage,
  HTTPLoopDetected, HTTPBandwidthLimitExceeded, HTTPNotExtended, HTTPNetworkAuthenticationRequired,
  HTTPNetworkReadTimeoutError, HTTPNetworkConnectTimeoutError
), envir = fauxpas_env)
