http100_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPContinue$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http100 <- function(response, behavior = "stop", message_template) {
  UseMethod("http100")
}
#' @export
http100.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http100' method for ", class(response), call. = FALSE)
}
#' @export
http100.response <- http100_
#' @export
http100.HttpResponse <- http100_
#' @export
http100.list <- http100_

http101_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPSwitchProtocol$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http101 <- function(response, behavior = "stop", message_template) {
  UseMethod("http101")
}
#' @export
http101.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http101' method for ", class(response), call. = FALSE)
}
#' @export
http101.response <- http101_
#' @export
http101.HttpResponse <- http101_
#' @export
http101.list <- http101_

http102_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPProcessing$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http102 <- function(response, behavior = "stop", message_template) {
  UseMethod("http102")
}
#' @export
http102.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http102' method for ", class(response), call. = FALSE)
}
#' @export
http102.response <- http102_
#' @export
http102.HttpResponse <- http102_
#' @export
http102.list <- http102_

http200_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPOK$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http200 <- function(response, behavior = "stop", message_template) {
  UseMethod("http200")
}
#' @export
http200.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http200' method for ", class(response), call. = FALSE)
}
#' @export
http200.response <- http200_
#' @export
http200.HttpResponse <- http200_
#' @export
http200.list <- http200_

http201_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPCreated$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http201 <- function(response, behavior = "stop", message_template) {
  UseMethod("http201")
}
#' @export
http201.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http201' method for ", class(response), call. = FALSE)
}
#' @export
http201.response <- http201_
#' @export
http201.HttpResponse <- http201_
#' @export
http201.list <- http201_

http202_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPAccepted$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http202 <- function(response, behavior = "stop", message_template) {
  UseMethod("http202")
}
#' @export
http202.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http202' method for ", class(response), call. = FALSE)
}
#' @export
http202.response <- http202_
#' @export
http202.HttpResponse <- http202_
#' @export
http202.list <- http202_

http203_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNonAuthoritativeInformation$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http203 <- function(response, behavior = "stop", message_template) {
  UseMethod("http203")
}
#' @export
http203.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http203' method for ", class(response), call. = FALSE)
}
#' @export
http203.response <- http203_
#' @export
http203.HttpResponse <- http203_
#' @export
http203.list <- http203_

http204_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNoContent$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http204 <- function(response, behavior = "stop", message_template) {
  UseMethod("http204")
}
#' @export
http204.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http204' method for ", class(response), call. = FALSE)
}
#' @export
http204.response <- http204_
#' @export
http204.HttpResponse <- http204_
#' @export
http204.list <- http204_

http205_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPResetContent$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http205 <- function(response, behavior = "stop", message_template) {
  UseMethod("http205")
}
#' @export
http205.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http205' method for ", class(response), call. = FALSE)
}
#' @export
http205.response <- http205_
#' @export
http205.HttpResponse <- http205_
#' @export
http205.list <- http205_

http206_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPPartialContent$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http206 <- function(response, behavior = "stop", message_template) {
  UseMethod("http206")
}
#' @export
http206.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http206' method for ", class(response), call. = FALSE)
}
#' @export
http206.response <- http206_
#' @export
http206.HttpResponse <- http206_
#' @export
http206.list <- http206_

http207_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPMultiStatus$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http207 <- function(response, behavior = "stop", message_template) {
  UseMethod("http207")
}
#' @export
http207.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http207' method for ", class(response), call. = FALSE)
}
#' @export
http207.response <- http207_
#' @export
http207.HttpResponse <- http207_
#' @export
http207.list <- http207_

http208_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPAlreadyReported$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http208 <- function(response, behavior = "stop", message_template) {
  UseMethod("http208")
}
#' @export
http208.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http208' method for ", class(response), call. = FALSE)
}
#' @export
http208.response <- http208_
#' @export
http208.HttpResponse <- http208_
#' @export
http208.list <- http208_

http226_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPImUsed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http226 <- function(response, behavior = "stop", message_template) {
  UseMethod("http226")
}
#' @export
http226.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http226' method for ", class(response), call. = FALSE)
}
#' @export
http226.response <- http226_
#' @export
http226.HttpResponse <- http226_
#' @export
http226.list <- http226_

http300_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPMultipleChoices$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http300 <- function(response, behavior = "stop", message_template) {
  UseMethod("http300")
}
#' @export
http300.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http300' method for ", class(response), call. = FALSE)
}
#' @export
http300.response <- http300_
#' @export
http300.HttpResponse <- http300_
#' @export
http300.list <- http300_

http301_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPMovedPermanently$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http301 <- function(response, behavior = "stop", message_template) {
  UseMethod("http301")
}
#' @export
http301.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http301' method for ", class(response), call. = FALSE)
}
#' @export
http301.response <- http301_
#' @export
http301.HttpResponse <- http301_
#' @export
http301.list <- http301_

http302_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPFound$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http302 <- function(response, behavior = "stop", message_template) {
  UseMethod("http302")
}
#' @export
http302.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http302' method for ", class(response), call. = FALSE)
}
#' @export
http302.response <- http302_
#' @export
http302.HttpResponse <- http302_
#' @export
http302.list <- http302_

http303_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPSeeOther$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http303 <- function(response, behavior = "stop", message_template) {
  UseMethod("http303")
}
#' @export
http303.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http303' method for ", class(response), call. = FALSE)
}
#' @export
http303.response <- http303_
#' @export
http303.HttpResponse <- http303_
#' @export
http303.list <- http303_

http304_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNotModified$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http304 <- function(response, behavior = "stop", message_template) {
  UseMethod("http304")
}
#' @export
http304.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http304' method for ", class(response), call. = FALSE)
}
#' @export
http304.response <- http304_
#' @export
http304.HttpResponse <- http304_
#' @export
http304.list <- http304_

http305_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUseProxy$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http305 <- function(response, behavior = "stop", message_template) {
  UseMethod("http305")
}
#' @export
http305.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http305' method for ", class(response), call. = FALSE)
}
#' @export
http305.response <- http305_
#' @export
http305.HttpResponse <- http305_
#' @export
http305.list <- http305_

http306_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPSwitchProxy$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http306 <- function(response, behavior = "stop", message_template) {
  UseMethod("http306")
}
#' @export
http306.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http306' method for ", class(response), call. = FALSE)
}
#' @export
http306.response <- http306_
#' @export
http306.HttpResponse <- http306_
#' @export
http306.list <- http306_

http307_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPTemporaryRedirect$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http307 <- function(response, behavior = "stop", message_template) {
  UseMethod("http307")
}
#' @export
http307.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http307' method for ", class(response), call. = FALSE)
}
#' @export
http307.response <- http307_
#' @export
http307.HttpResponse <- http307_
#' @export
http307.list <- http307_

http308_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPPermanentRedirect$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http308 <- function(response, behavior = "stop", message_template) {
  UseMethod("http308")
}
#' @export
http308.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http308' method for ", class(response), call. = FALSE)
}
#' @export
http308.response <- http308_
#' @export
http308.HttpResponse <- http308_
#' @export
http308.list <- http308_

http400_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPBadRequest$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http400 <- function(response, behavior = "stop", message_template) {
  UseMethod("http400")
}
#' @export
http400.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http400' method for ", class(response), call. = FALSE)
}
#' @export
http400.response <- http400_
#' @export
http400.HttpResponse <- http400_
#' @export
http400.list <- http400_

http401_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUnauthorized$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http401 <- function(response, behavior = "stop", message_template) {
  UseMethod("http401")
}
#' @export
http401.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http401' method for ", class(response), call. = FALSE)
}
#' @export
http401.response <- http401_
#' @export
http401.HttpResponse <- http401_
#' @export
http401.list <- http401_

http402_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPPaymentRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http402 <- function(response, behavior = "stop", message_template) {
  UseMethod("http402")
}
#' @export
http402.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http402' method for ", class(response), call. = FALSE)
}
#' @export
http402.response <- http402_
#' @export
http402.HttpResponse <- http402_
#' @export
http402.list <- http402_

http403_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPForbidden$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http403 <- function(response, behavior = "stop", message_template) {
  UseMethod("http403")
}
#' @export
http403.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http403' method for ", class(response), call. = FALSE)
}
#' @export
http403.response <- http403_
#' @export
http403.HttpResponse <- http403_
#' @export
http403.list <- http403_

http404_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNotFound$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http404 <- function(response, behavior = "stop", message_template) {
  UseMethod("http404")
}
#' @export
http404.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http404' method for ", class(response), call. = FALSE)
}
#' @export
http404.response <- http404_
#' @export
http404.HttpResponse <- http404_
#' @export
http404.list <- http404_

http405_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPMethodNotAllowed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http405 <- function(response, behavior = "stop", message_template) {
  UseMethod("http405")
}
#' @export
http405.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http405' method for ", class(response), call. = FALSE)
}
#' @export
http405.response <- http405_
#' @export
http405.HttpResponse <- http405_
#' @export
http405.list <- http405_

http406_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNotAcceptable$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http406 <- function(response, behavior = "stop", message_template) {
  UseMethod("http406")
}
#' @export
http406.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http406' method for ", class(response), call. = FALSE)
}
#' @export
http406.response <- http406_
#' @export
http406.HttpResponse <- http406_
#' @export
http406.list <- http406_

http407_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPProxyAuthenticationRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http407 <- function(response, behavior = "stop", message_template) {
  UseMethod("http407")
}
#' @export
http407.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http407' method for ", class(response), call. = FALSE)
}
#' @export
http407.response <- http407_
#' @export
http407.HttpResponse <- http407_
#' @export
http407.list <- http407_

http408_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRequestTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http408 <- function(response, behavior = "stop", message_template) {
  UseMethod("http408")
}
#' @export
http408.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http408' method for ", class(response), call. = FALSE)
}
#' @export
http408.response <- http408_
#' @export
http408.HttpResponse <- http408_
#' @export
http408.list <- http408_

http409_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPConflict$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http409 <- function(response, behavior = "stop", message_template) {
  UseMethod("http409")
}
#' @export
http409.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http409' method for ", class(response), call. = FALSE)
}
#' @export
http409.response <- http409_
#' @export
http409.HttpResponse <- http409_
#' @export
http409.list <- http409_

http410_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPGone$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http410 <- function(response, behavior = "stop", message_template) {
  UseMethod("http410")
}
#' @export
http410.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http410' method for ", class(response), call. = FALSE)
}
#' @export
http410.response <- http410_
#' @export
http410.HttpResponse <- http410_
#' @export
http410.list <- http410_

http411_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPLengthRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http411 <- function(response, behavior = "stop", message_template) {
  UseMethod("http411")
}
#' @export
http411.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http411' method for ", class(response), call. = FALSE)
}
#' @export
http411.response <- http411_
#' @export
http411.HttpResponse <- http411_
#' @export
http411.list <- http411_

http412_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPPreconditionFailed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http412 <- function(response, behavior = "stop", message_template) {
  UseMethod("http412")
}
#' @export
http412.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http412' method for ", class(response), call. = FALSE)
}
#' @export
http412.response <- http412_
#' @export
http412.HttpResponse <- http412_
#' @export
http412.list <- http412_

http413_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRequestEntityTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http413 <- function(response, behavior = "stop", message_template) {
  UseMethod("http413")
}
#' @export
http413.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http413' method for ", class(response), call. = FALSE)
}
#' @export
http413.response <- http413_
#' @export
http413.HttpResponse <- http413_
#' @export
http413.list <- http413_

http414_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRequestURITooLong$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http414 <- function(response, behavior = "stop", message_template) {
  UseMethod("http414")
}
#' @export
http414.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http414' method for ", class(response), call. = FALSE)
}
#' @export
http414.response <- http414_
#' @export
http414.HttpResponse <- http414_
#' @export
http414.list <- http414_

http415_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUnsupportedMediaType$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http415 <- function(response, behavior = "stop", message_template) {
  UseMethod("http415")
}
#' @export
http415.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http415' method for ", class(response), call. = FALSE)
}
#' @export
http415.response <- http415_
#' @export
http415.HttpResponse <- http415_
#' @export
http415.list <- http415_

http416_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRequestRangeNotSatisfiable$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http416 <- function(response, behavior = "stop", message_template) {
  UseMethod("http416")
}
#' @export
http416.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http416' method for ", class(response), call. = FALSE)
}
#' @export
http416.response <- http416_
#' @export
http416.HttpResponse <- http416_
#' @export
http416.list <- http416_

http417_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPExpectationFailed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http417 <- function(response, behavior = "stop", message_template) {
  UseMethod("http417")
}
#' @export
http417.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http417' method for ", class(response), call. = FALSE)
}
#' @export
http417.response <- http417_
#' @export
http417.HttpResponse <- http417_
#' @export
http417.list <- http417_

http418_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPTeaPot$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http418 <- function(response, behavior = "stop", message_template) {
  UseMethod("http418")
}
#' @export
http418.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http418' method for ", class(response), call. = FALSE)
}
#' @export
http418.response <- http418_
#' @export
http418.HttpResponse <- http418_
#' @export
http418.list <- http418_

http419_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPAuthenticationTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http419 <- function(response, behavior = "stop", message_template) {
  UseMethod("http419")
}
#' @export
http419.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http419' method for ", class(response), call. = FALSE)
}
#' @export
http419.response <- http419_
#' @export
http419.HttpResponse <- http419_
#' @export
http419.list <- http419_

http420_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPMethodFailure$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http420 <- function(response, behavior = "stop", message_template) {
  UseMethod("http420")
}
#' @export
http420.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http420' method for ", class(response), call. = FALSE)
}
#' @export
http420.response <- http420_
#' @export
http420.HttpResponse <- http420_
#' @export
http420.list <- http420_

http422_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUnprocessableEntity$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http422 <- function(response, behavior = "stop", message_template) {
  UseMethod("http422")
}
#' @export
http422.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http422' method for ", class(response), call. = FALSE)
}
#' @export
http422.response <- http422_
#' @export
http422.HttpResponse <- http422_
#' @export
http422.list <- http422_

http423_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPLocked$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http423 <- function(response, behavior = "stop", message_template) {
  UseMethod("http423")
}
#' @export
http423.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http423' method for ", class(response), call. = FALSE)
}
#' @export
http423.response <- http423_
#' @export
http423.HttpResponse <- http423_
#' @export
http423.list <- http423_

http424_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPFailedDependency$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http424 <- function(response, behavior = "stop", message_template) {
  UseMethod("http424")
}
#' @export
http424.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http424' method for ", class(response), call. = FALSE)
}
#' @export
http424.response <- http424_
#' @export
http424.HttpResponse <- http424_
#' @export
http424.list <- http424_

http425_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUnorderedCollection$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http425 <- function(response, behavior = "stop", message_template) {
  UseMethod("http425")
}
#' @export
http425.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http425' method for ", class(response), call. = FALSE)
}
#' @export
http425.response <- http425_
#' @export
http425.HttpResponse <- http425_
#' @export
http425.list <- http425_

http426_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUpgradeRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http426 <- function(response, behavior = "stop", message_template) {
  UseMethod("http426")
}
#' @export
http426.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http426' method for ", class(response), call. = FALSE)
}
#' @export
http426.response <- http426_
#' @export
http426.HttpResponse <- http426_
#' @export
http426.list <- http426_

http428_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPPreconditionRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http428 <- function(response, behavior = "stop", message_template) {
  UseMethod("http428")
}
#' @export
http428.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http428' method for ", class(response), call. = FALSE)
}
#' @export
http428.response <- http428_
#' @export
http428.HttpResponse <- http428_
#' @export
http428.list <- http428_

http429_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPTooManyRequests$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http429 <- function(response, behavior = "stop", message_template) {
  UseMethod("http429")
}
#' @export
http429.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http429' method for ", class(response), call. = FALSE)
}
#' @export
http429.response <- http429_
#' @export
http429.HttpResponse <- http429_
#' @export
http429.list <- http429_

http431_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRequestHeaderFieldsTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http431 <- function(response, behavior = "stop", message_template) {
  UseMethod("http431")
}
#' @export
http431.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http431' method for ", class(response), call. = FALSE)
}
#' @export
http431.response <- http431_
#' @export
http431.HttpResponse <- http431_
#' @export
http431.list <- http431_

http440_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPLoginTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http440 <- function(response, behavior = "stop", message_template) {
  UseMethod("http440")
}
#' @export
http440.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http440' method for ", class(response), call. = FALSE)
}
#' @export
http440.response <- http440_
#' @export
http440.HttpResponse <- http440_
#' @export
http440.list <- http440_

http444_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNoResponse$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http444 <- function(response, behavior = "stop", message_template) {
  UseMethod("http444")
}
#' @export
http444.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http444' method for ", class(response), call. = FALSE)
}
#' @export
http444.response <- http444_
#' @export
http444.HttpResponse <- http444_
#' @export
http444.list <- http444_

http449_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRetryWith$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http449 <- function(response, behavior = "stop", message_template) {
  UseMethod("http449")
}
#' @export
http449.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http449' method for ", class(response), call. = FALSE)
}
#' @export
http449.response <- http449_
#' @export
http449.HttpResponse <- http449_
#' @export
http449.list <- http449_

http450_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPBlockedByWindowsParentalControls$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http450 <- function(response, behavior = "stop", message_template) {
  UseMethod("http450")
}
#' @export
http450.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http450' method for ", class(response), call. = FALSE)
}
#' @export
http450.response <- http450_
#' @export
http450.HttpResponse <- http450_
#' @export
http450.list <- http450_

http451_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPUnavailableForLegalReasons$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http451 <- function(response, behavior = "stop", message_template) {
  UseMethod("http451")
}
#' @export
http451.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http451' method for ", class(response), call. = FALSE)
}
#' @export
http451.response <- http451_
#' @export
http451.HttpResponse <- http451_
#' @export
http451.list <- http451_

http494_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPRequestHeaderTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http494 <- function(response, behavior = "stop", message_template) {
  UseMethod("http494")
}
#' @export
http494.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http494' method for ", class(response), call. = FALSE)
}
#' @export
http494.response <- http494_
#' @export
http494.HttpResponse <- http494_
#' @export
http494.list <- http494_

http495_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPCertError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http495 <- function(response, behavior = "stop", message_template) {
  UseMethod("http495")
}
#' @export
http495.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http495' method for ", class(response), call. = FALSE)
}
#' @export
http495.response <- http495_
#' @export
http495.HttpResponse <- http495_
#' @export
http495.list <- http495_

http496_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNoCert$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http496 <- function(response, behavior = "stop", message_template) {
  UseMethod("http496")
}
#' @export
http496.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http496' method for ", class(response), call. = FALSE)
}
#' @export
http496.response <- http496_
#' @export
http496.HttpResponse <- http496_
#' @export
http496.list <- http496_

http497_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPHTTPToHTTPS$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http497 <- function(response, behavior = "stop", message_template) {
  UseMethod("http497")
}
#' @export
http497.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http497' method for ", class(response), call. = FALSE)
}
#' @export
http497.response <- http497_
#' @export
http497.HttpResponse <- http497_
#' @export
http497.list <- http497_

http498_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPTokenExpiredInvalid$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http498 <- function(response, behavior = "stop", message_template) {
  UseMethod("http498")
}
#' @export
http498.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http498' method for ", class(response), call. = FALSE)
}
#' @export
http498.response <- http498_
#' @export
http498.HttpResponse <- http498_
#' @export
http498.list <- http498_

http499_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPClientClosedRequest$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http499 <- function(response, behavior = "stop", message_template) {
  UseMethod("http499")
}
#' @export
http499.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http499' method for ", class(response), call. = FALSE)
}
#' @export
http499.response <- http499_
#' @export
http499.HttpResponse <- http499_
#' @export
http499.list <- http499_

http500_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPInternalServerError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http500 <- function(response, behavior = "stop", message_template) {
  UseMethod("http500")
}
#' @export
http500.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http500' method for ", class(response), call. = FALSE)
}
#' @export
http500.response <- http500_
#' @export
http500.HttpResponse <- http500_
#' @export
http500.list <- http500_

http501_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNotImplemented$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http501 <- function(response, behavior = "stop", message_template) {
  UseMethod("http501")
}
#' @export
http501.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http501' method for ", class(response), call. = FALSE)
}
#' @export
http501.response <- http501_
#' @export
http501.HttpResponse <- http501_
#' @export
http501.list <- http501_

http502_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPBadGateway$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http502 <- function(response, behavior = "stop", message_template) {
  UseMethod("http502")
}
#' @export
http502.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http502' method for ", class(response), call. = FALSE)
}
#' @export
http502.response <- http502_
#' @export
http502.HttpResponse <- http502_
#' @export
http502.list <- http502_

http503_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPServiceUnavailable$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http503 <- function(response, behavior = "stop", message_template) {
  UseMethod("http503")
}
#' @export
http503.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http503' method for ", class(response), call. = FALSE)
}
#' @export
http503.response <- http503_
#' @export
http503.HttpResponse <- http503_
#' @export
http503.list <- http503_

http504_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPGatewayTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http504 <- function(response, behavior = "stop", message_template) {
  UseMethod("http504")
}
#' @export
http504.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http504' method for ", class(response), call. = FALSE)
}
#' @export
http504.response <- http504_
#' @export
http504.HttpResponse <- http504_
#' @export
http504.list <- http504_

http505_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPHTTPVersionNotSupported$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http505 <- function(response, behavior = "stop", message_template) {
  UseMethod("http505")
}
#' @export
http505.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http505' method for ", class(response), call. = FALSE)
}
#' @export
http505.response <- http505_
#' @export
http505.HttpResponse <- http505_
#' @export
http505.list <- http505_

http506_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPVariantAlsoNegotiates$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http506 <- function(response, behavior = "stop", message_template) {
  UseMethod("http506")
}
#' @export
http506.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http506' method for ", class(response), call. = FALSE)
}
#' @export
http506.response <- http506_
#' @export
http506.HttpResponse <- http506_
#' @export
http506.list <- http506_

http507_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPInsufficientStorage$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http507 <- function(response, behavior = "stop", message_template) {
  UseMethod("http507")
}
#' @export
http507.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http507' method for ", class(response), call. = FALSE)
}
#' @export
http507.response <- http507_
#' @export
http507.HttpResponse <- http507_
#' @export
http507.list <- http507_

http508_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPLoopDetected$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http508 <- function(response, behavior = "stop", message_template) {
  UseMethod("http508")
}
#' @export
http508.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http508' method for ", class(response), call. = FALSE)
}
#' @export
http508.response <- http508_
#' @export
http508.HttpResponse <- http508_
#' @export
http508.list <- http508_

http509_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPBandwidthLimitExceeded$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http509 <- function(response, behavior = "stop", message_template) {
  UseMethod("http509")
}
#' @export
http509.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http509' method for ", class(response), call. = FALSE)
}
#' @export
http509.response <- http509_
#' @export
http509.HttpResponse <- http509_
#' @export
http509.list <- http509_

http510_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNotExtended$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http510 <- function(response, behavior = "stop", message_template) {
  UseMethod("http510")
}
#' @export
http510.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http510' method for ", class(response), call. = FALSE)
}
#' @export
http510.response <- http510_
#' @export
http510.HttpResponse <- http510_
#' @export
http510.list <- http510_

http511_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNetworkAuthenticationRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http511 <- function(response, behavior = "stop", message_template) {
  UseMethod("http511")
}
#' @export
http511.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http511' method for ", class(response), call. = FALSE)
}
#' @export
http511.response <- http511_
#' @export
http511.HttpResponse <- http511_
#' @export
http511.list <- http511_

http598_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNetworkReadTimeoutError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http598 <- function(response, behavior = "stop", message_template) {
  UseMethod("http598")
}
#' @export
http598.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http598' method for ", class(response), call. = FALSE)
}
#' @export
http598.response <- http598_
#' @export
http598.HttpResponse <- http598_
#' @export
http598.list <- http598_

http599_ <- function(response, behavior = "stop", message_template) {
  tmp <- HTTPNetworkConnectTimeoutError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http599 <- function(response, behavior = "stop", message_template) {
  UseMethod("http599")
}
#' @export
http599.default <- function(response, behavior = "stop", message_template) {
  stop("no 'http599' method for ", class(response), call. = FALSE)
}
#' @export
http599.response <- http599_
#' @export
http599.HttpResponse <- http599_
#' @export
http599.list <- http599_

