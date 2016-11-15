error_100_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPContinue$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_100 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_100")
}
#' @export
error_100.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_100' method for ", class(x), call. = FALSE)
}
#' @export
error_100.response <- error_100_
#' @export
error_100.HttpResponse <- error_100_
#' @export
error_100.list <- error_100_

error_101_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPSwitchProtocol$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_101 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_101")
}
#' @export
error_101.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_101' method for ", class(x), call. = FALSE)
}
#' @export
error_101.response <- error_101_
#' @export
error_101.HttpResponse <- error_101_
#' @export
error_101.list <- error_101_

error_102_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPProcessing$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_102 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_102")
}
#' @export
error_102.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_102' method for ", class(x), call. = FALSE)
}
#' @export
error_102.response <- error_102_
#' @export
error_102.HttpResponse <- error_102_
#' @export
error_102.list <- error_102_

error_200_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPOK$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_200 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_200")
}
#' @export
error_200.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_200' method for ", class(x), call. = FALSE)
}
#' @export
error_200.response <- error_200_
#' @export
error_200.HttpResponse <- error_200_
#' @export
error_200.list <- error_200_

error_201_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPCreated$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_201 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_201")
}
#' @export
error_201.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_201' method for ", class(x), call. = FALSE)
}
#' @export
error_201.response <- error_201_
#' @export
error_201.HttpResponse <- error_201_
#' @export
error_201.list <- error_201_

error_202_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPAccepted$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_202 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_202")
}
#' @export
error_202.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_202' method for ", class(x), call. = FALSE)
}
#' @export
error_202.response <- error_202_
#' @export
error_202.HttpResponse <- error_202_
#' @export
error_202.list <- error_202_

error_203_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNonAuthoritativeInformation$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_203 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_203")
}
#' @export
error_203.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_203' method for ", class(x), call. = FALSE)
}
#' @export
error_203.response <- error_203_
#' @export
error_203.HttpResponse <- error_203_
#' @export
error_203.list <- error_203_

error_204_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNoContent$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_204 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_204")
}
#' @export
error_204.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_204' method for ", class(x), call. = FALSE)
}
#' @export
error_204.response <- error_204_
#' @export
error_204.HttpResponse <- error_204_
#' @export
error_204.list <- error_204_

error_205_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPResetContent$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_205 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_205")
}
#' @export
error_205.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_205' method for ", class(x), call. = FALSE)
}
#' @export
error_205.response <- error_205_
#' @export
error_205.HttpResponse <- error_205_
#' @export
error_205.list <- error_205_

error_206_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPPartialContent$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_206 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_206")
}
#' @export
error_206.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_206' method for ", class(x), call. = FALSE)
}
#' @export
error_206.response <- error_206_
#' @export
error_206.HttpResponse <- error_206_
#' @export
error_206.list <- error_206_

error_207_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPMultiStatus$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_207 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_207")
}
#' @export
error_207.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_207' method for ", class(x), call. = FALSE)
}
#' @export
error_207.response <- error_207_
#' @export
error_207.HttpResponse <- error_207_
#' @export
error_207.list <- error_207_

error_208_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPAlreadyReported$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_208 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_208")
}
#' @export
error_208.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_208' method for ", class(x), call. = FALSE)
}
#' @export
error_208.response <- error_208_
#' @export
error_208.HttpResponse <- error_208_
#' @export
error_208.list <- error_208_

error_226_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPImUsed$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_226 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_226")
}
#' @export
error_226.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_226' method for ", class(x), call. = FALSE)
}
#' @export
error_226.response <- error_226_
#' @export
error_226.HttpResponse <- error_226_
#' @export
error_226.list <- error_226_

error_300_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPMultipleChoices$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_300 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_300")
}
#' @export
error_300.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_300' method for ", class(x), call. = FALSE)
}
#' @export
error_300.response <- error_300_
#' @export
error_300.HttpResponse <- error_300_
#' @export
error_300.list <- error_300_

error_301_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPMovedPermanently$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_301 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_301")
}
#' @export
error_301.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_301' method for ", class(x), call. = FALSE)
}
#' @export
error_301.response <- error_301_
#' @export
error_301.HttpResponse <- error_301_
#' @export
error_301.list <- error_301_

error_302_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPFound$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_302 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_302")
}
#' @export
error_302.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_302' method for ", class(x), call. = FALSE)
}
#' @export
error_302.response <- error_302_
#' @export
error_302.HttpResponse <- error_302_
#' @export
error_302.list <- error_302_

error_303_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPSeeOther$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_303 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_303")
}
#' @export
error_303.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_303' method for ", class(x), call. = FALSE)
}
#' @export
error_303.response <- error_303_
#' @export
error_303.HttpResponse <- error_303_
#' @export
error_303.list <- error_303_

error_304_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNotModified$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_304 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_304")
}
#' @export
error_304.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_304' method for ", class(x), call. = FALSE)
}
#' @export
error_304.response <- error_304_
#' @export
error_304.HttpResponse <- error_304_
#' @export
error_304.list <- error_304_

error_305_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUseProxy$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_305 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_305")
}
#' @export
error_305.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_305' method for ", class(x), call. = FALSE)
}
#' @export
error_305.response <- error_305_
#' @export
error_305.HttpResponse <- error_305_
#' @export
error_305.list <- error_305_

error_306_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPSwitchProxy$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_306 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_306")
}
#' @export
error_306.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_306' method for ", class(x), call. = FALSE)
}
#' @export
error_306.response <- error_306_
#' @export
error_306.HttpResponse <- error_306_
#' @export
error_306.list <- error_306_

error_307_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPTemporaryRedirect$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_307 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_307")
}
#' @export
error_307.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_307' method for ", class(x), call. = FALSE)
}
#' @export
error_307.response <- error_307_
#' @export
error_307.HttpResponse <- error_307_
#' @export
error_307.list <- error_307_

error_308_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPPermanentRedirect$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_308 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_308")
}
#' @export
error_308.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_308' method for ", class(x), call. = FALSE)
}
#' @export
error_308.response <- error_308_
#' @export
error_308.HttpResponse <- error_308_
#' @export
error_308.list <- error_308_

error_400_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPBadRequest$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_400 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_400")
}
#' @export
error_400.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_400' method for ", class(x), call. = FALSE)
}
#' @export
error_400.response <- error_400_
#' @export
error_400.HttpResponse <- error_400_
#' @export
error_400.list <- error_400_

error_401_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUnauthorized$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_401 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_401")
}
#' @export
error_401.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_401' method for ", class(x), call. = FALSE)
}
#' @export
error_401.response <- error_401_
#' @export
error_401.HttpResponse <- error_401_
#' @export
error_401.list <- error_401_

error_402_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPPaymentRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_402 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_402")
}
#' @export
error_402.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_402' method for ", class(x), call. = FALSE)
}
#' @export
error_402.response <- error_402_
#' @export
error_402.HttpResponse <- error_402_
#' @export
error_402.list <- error_402_

error_403_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPForbidden$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_403 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_403")
}
#' @export
error_403.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_403' method for ", class(x), call. = FALSE)
}
#' @export
error_403.response <- error_403_
#' @export
error_403.HttpResponse <- error_403_
#' @export
error_403.list <- error_403_

error_404_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNotFound$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_404 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_404")
}
#' @export
error_404.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_404' method for ", class(x), call. = FALSE)
}
#' @export
error_404.response <- error_404_
#' @export
error_404.HttpResponse <- error_404_
#' @export
error_404.list <- error_404_

error_405_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPMethodNotAllowed$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_405 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_405")
}
#' @export
error_405.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_405' method for ", class(x), call. = FALSE)
}
#' @export
error_405.response <- error_405_
#' @export
error_405.HttpResponse <- error_405_
#' @export
error_405.list <- error_405_

error_406_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNotAcceptable$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_406 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_406")
}
#' @export
error_406.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_406' method for ", class(x), call. = FALSE)
}
#' @export
error_406.response <- error_406_
#' @export
error_406.HttpResponse <- error_406_
#' @export
error_406.list <- error_406_

error_407_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPProxyAuthenticationRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_407 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_407")
}
#' @export
error_407.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_407' method for ", class(x), call. = FALSE)
}
#' @export
error_407.response <- error_407_
#' @export
error_407.HttpResponse <- error_407_
#' @export
error_407.list <- error_407_

error_408_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_408 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_408")
}
#' @export
error_408.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_408' method for ", class(x), call. = FALSE)
}
#' @export
error_408.response <- error_408_
#' @export
error_408.HttpResponse <- error_408_
#' @export
error_408.list <- error_408_

error_409_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPConflict$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_409 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_409")
}
#' @export
error_409.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_409' method for ", class(x), call. = FALSE)
}
#' @export
error_409.response <- error_409_
#' @export
error_409.HttpResponse <- error_409_
#' @export
error_409.list <- error_409_

error_410_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPGone$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_410 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_410")
}
#' @export
error_410.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_410' method for ", class(x), call. = FALSE)
}
#' @export
error_410.response <- error_410_
#' @export
error_410.HttpResponse <- error_410_
#' @export
error_410.list <- error_410_

error_411_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPLengthRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_411 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_411")
}
#' @export
error_411.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_411' method for ", class(x), call. = FALSE)
}
#' @export
error_411.response <- error_411_
#' @export
error_411.HttpResponse <- error_411_
#' @export
error_411.list <- error_411_

error_412_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPPreconditionFailed$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_412 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_412")
}
#' @export
error_412.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_412' method for ", class(x), call. = FALSE)
}
#' @export
error_412.response <- error_412_
#' @export
error_412.HttpResponse <- error_412_
#' @export
error_412.list <- error_412_

error_413_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestEntityTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_413 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_413")
}
#' @export
error_413.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_413' method for ", class(x), call. = FALSE)
}
#' @export
error_413.response <- error_413_
#' @export
error_413.HttpResponse <- error_413_
#' @export
error_413.list <- error_413_

error_414_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestURITooLong$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_414 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_414")
}
#' @export
error_414.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_414' method for ", class(x), call. = FALSE)
}
#' @export
error_414.response <- error_414_
#' @export
error_414.HttpResponse <- error_414_
#' @export
error_414.list <- error_414_

error_415_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUnsupportedMediaType$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_415 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_415")
}
#' @export
error_415.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_415' method for ", class(x), call. = FALSE)
}
#' @export
error_415.response <- error_415_
#' @export
error_415.HttpResponse <- error_415_
#' @export
error_415.list <- error_415_

error_416_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestRangeNotSatisfiable$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_416 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_416")
}
#' @export
error_416.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_416' method for ", class(x), call. = FALSE)
}
#' @export
error_416.response <- error_416_
#' @export
error_416.HttpResponse <- error_416_
#' @export
error_416.list <- error_416_

error_417_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPExpectationFailed$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_417 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_417")
}
#' @export
error_417.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_417' method for ", class(x), call. = FALSE)
}
#' @export
error_417.response <- error_417_
#' @export
error_417.HttpResponse <- error_417_
#' @export
error_417.list <- error_417_

error_418_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPTeaPot$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_418 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_418")
}
#' @export
error_418.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_418' method for ", class(x), call. = FALSE)
}
#' @export
error_418.response <- error_418_
#' @export
error_418.HttpResponse <- error_418_
#' @export
error_418.list <- error_418_

error_419_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPAuthenticationTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_419 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_419")
}
#' @export
error_419.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_419' method for ", class(x), call. = FALSE)
}
#' @export
error_419.response <- error_419_
#' @export
error_419.HttpResponse <- error_419_
#' @export
error_419.list <- error_419_

error_420_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPMethodFailure$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_420 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_420")
}
#' @export
error_420.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_420' method for ", class(x), call. = FALSE)
}
#' @export
error_420.response <- error_420_
#' @export
error_420.HttpResponse <- error_420_
#' @export
error_420.list <- error_420_

error_422_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUnprocessableEntity$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_422 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_422")
}
#' @export
error_422.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_422' method for ", class(x), call. = FALSE)
}
#' @export
error_422.response <- error_422_
#' @export
error_422.HttpResponse <- error_422_
#' @export
error_422.list <- error_422_

error_423_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPLocked$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_423 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_423")
}
#' @export
error_423.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_423' method for ", class(x), call. = FALSE)
}
#' @export
error_423.response <- error_423_
#' @export
error_423.HttpResponse <- error_423_
#' @export
error_423.list <- error_423_

error_424_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPFailedDependency$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_424 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_424")
}
#' @export
error_424.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_424' method for ", class(x), call. = FALSE)
}
#' @export
error_424.response <- error_424_
#' @export
error_424.HttpResponse <- error_424_
#' @export
error_424.list <- error_424_

error_425_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUnorderedCollection$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_425 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_425")
}
#' @export
error_425.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_425' method for ", class(x), call. = FALSE)
}
#' @export
error_425.response <- error_425_
#' @export
error_425.HttpResponse <- error_425_
#' @export
error_425.list <- error_425_

error_426_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUpgradeRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_426 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_426")
}
#' @export
error_426.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_426' method for ", class(x), call. = FALSE)
}
#' @export
error_426.response <- error_426_
#' @export
error_426.HttpResponse <- error_426_
#' @export
error_426.list <- error_426_

error_428_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPPreconditionRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_428 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_428")
}
#' @export
error_428.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_428' method for ", class(x), call. = FALSE)
}
#' @export
error_428.response <- error_428_
#' @export
error_428.HttpResponse <- error_428_
#' @export
error_428.list <- error_428_

error_429_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPTooManyRequests$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_429 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_429")
}
#' @export
error_429.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_429' method for ", class(x), call. = FALSE)
}
#' @export
error_429.response <- error_429_
#' @export
error_429.HttpResponse <- error_429_
#' @export
error_429.list <- error_429_

error_431_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestHeaderFieldsTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_431 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_431")
}
#' @export
error_431.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_431' method for ", class(x), call. = FALSE)
}
#' @export
error_431.response <- error_431_
#' @export
error_431.HttpResponse <- error_431_
#' @export
error_431.list <- error_431_

error_440_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPLoginTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_440 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_440")
}
#' @export
error_440.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_440' method for ", class(x), call. = FALSE)
}
#' @export
error_440.response <- error_440_
#' @export
error_440.HttpResponse <- error_440_
#' @export
error_440.list <- error_440_

error_444_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNoResponse$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_444 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_444")
}
#' @export
error_444.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_444' method for ", class(x), call. = FALSE)
}
#' @export
error_444.response <- error_444_
#' @export
error_444.HttpResponse <- error_444_
#' @export
error_444.list <- error_444_

error_449_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRetryWith$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_449 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_449")
}
#' @export
error_449.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_449' method for ", class(x), call. = FALSE)
}
#' @export
error_449.response <- error_449_
#' @export
error_449.HttpResponse <- error_449_
#' @export
error_449.list <- error_449_

error_450_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPBlockedByWindowsParentalControls$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_450 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_450")
}
#' @export
error_450.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_450' method for ", class(x), call. = FALSE)
}
#' @export
error_450.response <- error_450_
#' @export
error_450.HttpResponse <- error_450_
#' @export
error_450.list <- error_450_

error_451_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPUnavailableForLegalReasons$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_451 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_451")
}
#' @export
error_451.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_451' method for ", class(x), call. = FALSE)
}
#' @export
error_451.response <- error_451_
#' @export
error_451.HttpResponse <- error_451_
#' @export
error_451.list <- error_451_

error_494_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPRequestHeaderTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_494 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_494")
}
#' @export
error_494.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_494' method for ", class(x), call. = FALSE)
}
#' @export
error_494.response <- error_494_
#' @export
error_494.HttpResponse <- error_494_
#' @export
error_494.list <- error_494_

error_495_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPCertError$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_495 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_495")
}
#' @export
error_495.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_495' method for ", class(x), call. = FALSE)
}
#' @export
error_495.response <- error_495_
#' @export
error_495.HttpResponse <- error_495_
#' @export
error_495.list <- error_495_

error_496_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNoCert$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_496 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_496")
}
#' @export
error_496.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_496' method for ", class(x), call. = FALSE)
}
#' @export
error_496.response <- error_496_
#' @export
error_496.HttpResponse <- error_496_
#' @export
error_496.list <- error_496_

error_497_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPHTTPToHTTPS$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_497 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_497")
}
#' @export
error_497.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_497' method for ", class(x), call. = FALSE)
}
#' @export
error_497.response <- error_497_
#' @export
error_497.HttpResponse <- error_497_
#' @export
error_497.list <- error_497_

error_498_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPTokenExpiredInvalid$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_498 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_498")
}
#' @export
error_498.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_498' method for ", class(x), call. = FALSE)
}
#' @export
error_498.response <- error_498_
#' @export
error_498.HttpResponse <- error_498_
#' @export
error_498.list <- error_498_

error_499_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPClientClosedRequest$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_499 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_499")
}
#' @export
error_499.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_499' method for ", class(x), call. = FALSE)
}
#' @export
error_499.response <- error_499_
#' @export
error_499.HttpResponse <- error_499_
#' @export
error_499.list <- error_499_

error_500_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPInternalServerError$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_500 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_500")
}
#' @export
error_500.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_500' method for ", class(x), call. = FALSE)
}
#' @export
error_500.response <- error_500_
#' @export
error_500.HttpResponse <- error_500_
#' @export
error_500.list <- error_500_

error_501_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNotImplemented$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_501 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_501")
}
#' @export
error_501.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_501' method for ", class(x), call. = FALSE)
}
#' @export
error_501.response <- error_501_
#' @export
error_501.HttpResponse <- error_501_
#' @export
error_501.list <- error_501_

error_502_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPBadGateway$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_502 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_502")
}
#' @export
error_502.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_502' method for ", class(x), call. = FALSE)
}
#' @export
error_502.response <- error_502_
#' @export
error_502.HttpResponse <- error_502_
#' @export
error_502.list <- error_502_

error_503_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPServiceUnavailable$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_503 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_503")
}
#' @export
error_503.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_503' method for ", class(x), call. = FALSE)
}
#' @export
error_503.response <- error_503_
#' @export
error_503.HttpResponse <- error_503_
#' @export
error_503.list <- error_503_

error_504_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPGatewayTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_504 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_504")
}
#' @export
error_504.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_504' method for ", class(x), call. = FALSE)
}
#' @export
error_504.response <- error_504_
#' @export
error_504.HttpResponse <- error_504_
#' @export
error_504.list <- error_504_

error_505_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPHTTPVersionNotSupported$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_505 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_505")
}
#' @export
error_505.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_505' method for ", class(x), call. = FALSE)
}
#' @export
error_505.response <- error_505_
#' @export
error_505.HttpResponse <- error_505_
#' @export
error_505.list <- error_505_

error_506_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPVariantAlsoNegotiates$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_506 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_506")
}
#' @export
error_506.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_506' method for ", class(x), call. = FALSE)
}
#' @export
error_506.response <- error_506_
#' @export
error_506.HttpResponse <- error_506_
#' @export
error_506.list <- error_506_

error_507_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPInsufficientStorage$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_507 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_507")
}
#' @export
error_507.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_507' method for ", class(x), call. = FALSE)
}
#' @export
error_507.response <- error_507_
#' @export
error_507.HttpResponse <- error_507_
#' @export
error_507.list <- error_507_

error_508_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPLoopDetected$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_508 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_508")
}
#' @export
error_508.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_508' method for ", class(x), call. = FALSE)
}
#' @export
error_508.response <- error_508_
#' @export
error_508.HttpResponse <- error_508_
#' @export
error_508.list <- error_508_

error_509_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPBandwidthLimitExceeded$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_509 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_509")
}
#' @export
error_509.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_509' method for ", class(x), call. = FALSE)
}
#' @export
error_509.response <- error_509_
#' @export
error_509.HttpResponse <- error_509_
#' @export
error_509.list <- error_509_

error_510_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNotExtended$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_510 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_510")
}
#' @export
error_510.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_510' method for ", class(x), call. = FALSE)
}
#' @export
error_510.response <- error_510_
#' @export
error_510.HttpResponse <- error_510_
#' @export
error_510.list <- error_510_

error_511_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNetworkAuthenticationRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_511 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_511")
}
#' @export
error_511.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_511' method for ", class(x), call. = FALSE)
}
#' @export
error_511.response <- error_511_
#' @export
error_511.HttpResponse <- error_511_
#' @export
error_511.list <- error_511_

error_598_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNetworkReadTimeoutError$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_598 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_598")
}
#' @export
error_598.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_598' method for ", class(x), call. = FALSE)
}
#' @export
error_598.response <- error_598_
#' @export
error_598.HttpResponse <- error_598_
#' @export
error_598.list <- error_598_

error_599_ <- function(x, behavior = "stop", message_template = NULL) {
  tmp <- HTTPNetworkConnectTimeoutError$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_599 <- function(x, behavior = "stop", message_template = NULL) {
  UseMethod("error_599")
}
#' @export
error_599.default <- function(x, behavior = "stop", message_template = NULL) {
  stop("no 'error_599' method for ", class(x), call. = FALSE)
}
#' @export
error_599.response <- error_599_
#' @export
error_599.HttpResponse <- error_599_
#' @export
error_599.list <- error_599_

