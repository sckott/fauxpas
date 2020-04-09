# generated from extra/generate.R

http100_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPContinue$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http100 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http100")
}
#' @export
http100.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http100' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http100.response <- http100_
#' @export
http100.HttpResponse <- http100_
#' @export
http100.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http100_(response, behavior, message_template)
}

http101_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPSwitchProtocol$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http101 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http101")
}
#' @export
http101.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http101' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http101.response <- http101_
#' @export
http101.HttpResponse <- http101_
#' @export
http101.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http101_(response, behavior, message_template)
}

http102_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPProcessing$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http102 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http102")
}
#' @export
http102.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http102' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http102.response <- http102_
#' @export
http102.HttpResponse <- http102_
#' @export
http102.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http102_(response, behavior, message_template)
}

http200_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPOK$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http200 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http200")
}
#' @export
http200.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http200' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http200.response <- http200_
#' @export
http200.HttpResponse <- http200_
#' @export
http200.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http200_(response, behavior, message_template)
}

http201_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPCreated$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http201 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http201")
}
#' @export
http201.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http201' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http201.response <- http201_
#' @export
http201.HttpResponse <- http201_
#' @export
http201.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http201_(response, behavior, message_template)
}

http202_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPAccepted$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http202 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http202")
}
#' @export
http202.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http202' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http202.response <- http202_
#' @export
http202.HttpResponse <- http202_
#' @export
http202.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http202_(response, behavior, message_template)
}

http203_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNonAuthoritativeInformation$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http203 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http203")
}
#' @export
http203.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http203' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http203.response <- http203_
#' @export
http203.HttpResponse <- http203_
#' @export
http203.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http203_(response, behavior, message_template)
}

http204_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNoContent$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http204 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http204")
}
#' @export
http204.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http204' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http204.response <- http204_
#' @export
http204.HttpResponse <- http204_
#' @export
http204.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http204_(response, behavior, message_template)
}

http205_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPResetContent$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http205 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http205")
}
#' @export
http205.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http205' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http205.response <- http205_
#' @export
http205.HttpResponse <- http205_
#' @export
http205.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http205_(response, behavior, message_template)
}

http206_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPPartialContent$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http206 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http206")
}
#' @export
http206.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http206' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http206.response <- http206_
#' @export
http206.HttpResponse <- http206_
#' @export
http206.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http206_(response, behavior, message_template)
}

http207_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPMultiStatus$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http207 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http207")
}
#' @export
http207.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http207' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http207.response <- http207_
#' @export
http207.HttpResponse <- http207_
#' @export
http207.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http207_(response, behavior, message_template)
}

http208_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPAlreadyReported$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http208 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http208")
}
#' @export
http208.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http208' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http208.response <- http208_
#' @export
http208.HttpResponse <- http208_
#' @export
http208.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http208_(response, behavior, message_template)
}

http226_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPImUsed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http226 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http226")
}
#' @export
http226.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http226' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http226.response <- http226_
#' @export
http226.HttpResponse <- http226_
#' @export
http226.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http226_(response, behavior, message_template)
}

http300_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPMultipleChoices$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http300 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http300")
}
#' @export
http300.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http300' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http300.response <- http300_
#' @export
http300.HttpResponse <- http300_
#' @export
http300.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http300_(response, behavior, message_template)
}

http301_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPMovedPermanently$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http301 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http301")
}
#' @export
http301.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http301' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http301.response <- http301_
#' @export
http301.HttpResponse <- http301_
#' @export
http301.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http301_(response, behavior, message_template)
}

http302_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPFound$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http302 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http302")
}
#' @export
http302.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http302' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http302.response <- http302_
#' @export
http302.HttpResponse <- http302_
#' @export
http302.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http302_(response, behavior, message_template)
}

http303_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPSeeOther$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http303 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http303")
}
#' @export
http303.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http303' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http303.response <- http303_
#' @export
http303.HttpResponse <- http303_
#' @export
http303.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http303_(response, behavior, message_template)
}

http304_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNotModified$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http304 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http304")
}
#' @export
http304.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http304' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http304.response <- http304_
#' @export
http304.HttpResponse <- http304_
#' @export
http304.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http304_(response, behavior, message_template)
}

http305_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUseProxy$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http305 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http305")
}
#' @export
http305.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http305' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http305.response <- http305_
#' @export
http305.HttpResponse <- http305_
#' @export
http305.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http305_(response, behavior, message_template)
}

http306_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPSwitchProxy$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http306 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http306")
}
#' @export
http306.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http306' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http306.response <- http306_
#' @export
http306.HttpResponse <- http306_
#' @export
http306.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http306_(response, behavior, message_template)
}

http307_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPTemporaryRedirect$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http307 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http307")
}
#' @export
http307.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http307' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http307.response <- http307_
#' @export
http307.HttpResponse <- http307_
#' @export
http307.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http307_(response, behavior, message_template)
}

http308_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPPermanentRedirect$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http308 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http308")
}
#' @export
http308.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http308' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http308.response <- http308_
#' @export
http308.HttpResponse <- http308_
#' @export
http308.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http308_(response, behavior, message_template)
}

http400_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPBadRequest$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http400 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http400")
}
#' @export
http400.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http400' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http400.response <- http400_
#' @export
http400.HttpResponse <- http400_
#' @export
http400.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http400_(response, behavior, message_template)
}

http401_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUnauthorized$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http401 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http401")
}
#' @export
http401.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http401' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http401.response <- http401_
#' @export
http401.HttpResponse <- http401_
#' @export
http401.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http401_(response, behavior, message_template)
}

http402_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPPaymentRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http402 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http402")
}
#' @export
http402.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http402' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http402.response <- http402_
#' @export
http402.HttpResponse <- http402_
#' @export
http402.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http402_(response, behavior, message_template)
}

http403_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPForbidden$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http403 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http403")
}
#' @export
http403.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http403' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http403.response <- http403_
#' @export
http403.HttpResponse <- http403_
#' @export
http403.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http403_(response, behavior, message_template)
}

http404_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNotFound$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http404 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http404")
}
#' @export
http404.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http404' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http404.response <- http404_
#' @export
http404.HttpResponse <- http404_
#' @export
http404.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http404_(response, behavior, message_template)
}

http405_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPMethodNotAllowed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http405 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http405")
}
#' @export
http405.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http405' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http405.response <- http405_
#' @export
http405.HttpResponse <- http405_
#' @export
http405.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http405_(response, behavior, message_template)
}

http406_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNotAcceptable$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http406 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http406")
}
#' @export
http406.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http406' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http406.response <- http406_
#' @export
http406.HttpResponse <- http406_
#' @export
http406.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http406_(response, behavior, message_template)
}

http407_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPProxyAuthenticationRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http407 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http407")
}
#' @export
http407.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http407' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http407.response <- http407_
#' @export
http407.HttpResponse <- http407_
#' @export
http407.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http407_(response, behavior, message_template)
}

http408_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRequestTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http408 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http408")
}
#' @export
http408.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http408' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http408.response <- http408_
#' @export
http408.HttpResponse <- http408_
#' @export
http408.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http408_(response, behavior, message_template)
}

http409_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPConflict$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http409 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http409")
}
#' @export
http409.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http409' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http409.response <- http409_
#' @export
http409.HttpResponse <- http409_
#' @export
http409.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http409_(response, behavior, message_template)
}

http410_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPGone$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http410 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http410")
}
#' @export
http410.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http410' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http410.response <- http410_
#' @export
http410.HttpResponse <- http410_
#' @export
http410.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http410_(response, behavior, message_template)
}

http411_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPLengthRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http411 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http411")
}
#' @export
http411.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http411' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http411.response <- http411_
#' @export
http411.HttpResponse <- http411_
#' @export
http411.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http411_(response, behavior, message_template)
}

http412_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPPreconditionFailed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http412 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http412")
}
#' @export
http412.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http412' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http412.response <- http412_
#' @export
http412.HttpResponse <- http412_
#' @export
http412.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http412_(response, behavior, message_template)
}

http413_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRequestEntityTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http413 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http413")
}
#' @export
http413.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http413' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http413.response <- http413_
#' @export
http413.HttpResponse <- http413_
#' @export
http413.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http413_(response, behavior, message_template)
}

http414_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRequestURITooLong$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http414 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http414")
}
#' @export
http414.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http414' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http414.response <- http414_
#' @export
http414.HttpResponse <- http414_
#' @export
http414.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http414_(response, behavior, message_template)
}

http415_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUnsupportedMediaType$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http415 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http415")
}
#' @export
http415.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http415' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http415.response <- http415_
#' @export
http415.HttpResponse <- http415_
#' @export
http415.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http415_(response, behavior, message_template)
}

http416_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRequestRangeNotSatisfiable$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http416 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http416")
}
#' @export
http416.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http416' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http416.response <- http416_
#' @export
http416.HttpResponse <- http416_
#' @export
http416.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http416_(response, behavior, message_template)
}

http417_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPExpectationFailed$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http417 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http417")
}
#' @export
http417.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http417' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http417.response <- http417_
#' @export
http417.HttpResponse <- http417_
#' @export
http417.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http417_(response, behavior, message_template)
}

http418_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPTeaPot$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http418 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http418")
}
#' @export
http418.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http418' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http418.response <- http418_
#' @export
http418.HttpResponse <- http418_
#' @export
http418.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http418_(response, behavior, message_template)
}

http419_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPAuthenticationTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http419 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http419")
}
#' @export
http419.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http419' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http419.response <- http419_
#' @export
http419.HttpResponse <- http419_
#' @export
http419.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http419_(response, behavior, message_template)
}

http420_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPMethodFailure$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http420 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http420")
}
#' @export
http420.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http420' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http420.response <- http420_
#' @export
http420.HttpResponse <- http420_
#' @export
http420.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http420_(response, behavior, message_template)
}

http422_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUnprocessableEntity$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http422 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http422")
}
#' @export
http422.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http422' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http422.response <- http422_
#' @export
http422.HttpResponse <- http422_
#' @export
http422.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http422_(response, behavior, message_template)
}

http423_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPLocked$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http423 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http423")
}
#' @export
http423.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http423' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http423.response <- http423_
#' @export
http423.HttpResponse <- http423_
#' @export
http423.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http423_(response, behavior, message_template)
}

http424_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPFailedDependency$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http424 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http424")
}
#' @export
http424.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http424' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http424.response <- http424_
#' @export
http424.HttpResponse <- http424_
#' @export
http424.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http424_(response, behavior, message_template)
}

http425_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUnorderedCollection$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http425 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http425")
}
#' @export
http425.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http425' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http425.response <- http425_
#' @export
http425.HttpResponse <- http425_
#' @export
http425.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http425_(response, behavior, message_template)
}

http426_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUpgradeRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http426 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http426")
}
#' @export
http426.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http426' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http426.response <- http426_
#' @export
http426.HttpResponse <- http426_
#' @export
http426.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http426_(response, behavior, message_template)
}

http428_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPPreconditionRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http428 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http428")
}
#' @export
http428.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http428' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http428.response <- http428_
#' @export
http428.HttpResponse <- http428_
#' @export
http428.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http428_(response, behavior, message_template)
}

http429_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPTooManyRequests$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http429 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http429")
}
#' @export
http429.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http429' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http429.response <- http429_
#' @export
http429.HttpResponse <- http429_
#' @export
http429.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http429_(response, behavior, message_template)
}

http431_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRequestHeaderFieldsTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http431 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http431")
}
#' @export
http431.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http431' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http431.response <- http431_
#' @export
http431.HttpResponse <- http431_
#' @export
http431.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http431_(response, behavior, message_template)
}

http440_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPLoginTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http440 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http440")
}
#' @export
http440.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http440' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http440.response <- http440_
#' @export
http440.HttpResponse <- http440_
#' @export
http440.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http440_(response, behavior, message_template)
}

http444_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNoResponse$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http444 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http444")
}
#' @export
http444.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http444' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http444.response <- http444_
#' @export
http444.HttpResponse <- http444_
#' @export
http444.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http444_(response, behavior, message_template)
}

http449_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRetryWith$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http449 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http449")
}
#' @export
http449.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http449' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http449.response <- http449_
#' @export
http449.HttpResponse <- http449_
#' @export
http449.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http449_(response, behavior, message_template)
}

http450_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPBlockedByWindowsParentalControls$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http450 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http450")
}
#' @export
http450.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http450' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http450.response <- http450_
#' @export
http450.HttpResponse <- http450_
#' @export
http450.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http450_(response, behavior, message_template)
}

http451_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPUnavailableForLegalReasons$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http451 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http451")
}
#' @export
http451.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http451' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http451.response <- http451_
#' @export
http451.HttpResponse <- http451_
#' @export
http451.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http451_(response, behavior, message_template)
}

http494_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPRequestHeaderTooLarge$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http494 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http494")
}
#' @export
http494.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http494' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http494.response <- http494_
#' @export
http494.HttpResponse <- http494_
#' @export
http494.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http494_(response, behavior, message_template)
}

http495_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPCertError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http495 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http495")
}
#' @export
http495.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http495' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http495.response <- http495_
#' @export
http495.HttpResponse <- http495_
#' @export
http495.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http495_(response, behavior, message_template)
}

http496_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNoCert$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http496 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http496")
}
#' @export
http496.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http496' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http496.response <- http496_
#' @export
http496.HttpResponse <- http496_
#' @export
http496.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http496_(response, behavior, message_template)
}

http497_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPHTTPToHTTPS$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http497 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http497")
}
#' @export
http497.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http497' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http497.response <- http497_
#' @export
http497.HttpResponse <- http497_
#' @export
http497.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http497_(response, behavior, message_template)
}

http498_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPTokenExpiredInvalid$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http498 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http498")
}
#' @export
http498.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http498' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http498.response <- http498_
#' @export
http498.HttpResponse <- http498_
#' @export
http498.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http498_(response, behavior, message_template)
}

http499_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPClientClosedRequest$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http499 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http499")
}
#' @export
http499.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http499' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http499.response <- http499_
#' @export
http499.HttpResponse <- http499_
#' @export
http499.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http499_(response, behavior, message_template)
}

http500_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPInternalServerError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http500 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http500")
}
#' @export
http500.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http500' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http500.response <- http500_
#' @export
http500.HttpResponse <- http500_
#' @export
http500.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http500_(response, behavior, message_template)
}

http501_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNotImplemented$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http501 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http501")
}
#' @export
http501.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http501' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http501.response <- http501_
#' @export
http501.HttpResponse <- http501_
#' @export
http501.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http501_(response, behavior, message_template)
}

http502_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPBadGateway$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http502 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http502")
}
#' @export
http502.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http502' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http502.response <- http502_
#' @export
http502.HttpResponse <- http502_
#' @export
http502.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http502_(response, behavior, message_template)
}

http503_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPServiceUnavailable$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http503 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http503")
}
#' @export
http503.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http503' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http503.response <- http503_
#' @export
http503.HttpResponse <- http503_
#' @export
http503.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http503_(response, behavior, message_template)
}

http504_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPGatewayTimeout$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http504 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http504")
}
#' @export
http504.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http504' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http504.response <- http504_
#' @export
http504.HttpResponse <- http504_
#' @export
http504.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http504_(response, behavior, message_template)
}

http505_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPHTTPVersionNotSupported$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http505 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http505")
}
#' @export
http505.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http505' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http505.response <- http505_
#' @export
http505.HttpResponse <- http505_
#' @export
http505.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http505_(response, behavior, message_template)
}

http506_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPVariantAlsoNegotiates$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http506 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http506")
}
#' @export
http506.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http506' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http506.response <- http506_
#' @export
http506.HttpResponse <- http506_
#' @export
http506.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http506_(response, behavior, message_template)
}

http507_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPInsufficientStorage$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http507 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http507")
}
#' @export
http507.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http507' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http507.response <- http507_
#' @export
http507.HttpResponse <- http507_
#' @export
http507.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http507_(response, behavior, message_template)
}

http508_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPLoopDetected$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http508 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http508")
}
#' @export
http508.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http508' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http508.response <- http508_
#' @export
http508.HttpResponse <- http508_
#' @export
http508.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http508_(response, behavior, message_template)
}

http509_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPBandwidthLimitExceeded$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http509 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http509")
}
#' @export
http509.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http509' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http509.response <- http509_
#' @export
http509.HttpResponse <- http509_
#' @export
http509.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http509_(response, behavior, message_template)
}

http510_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNotExtended$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http510 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http510")
}
#' @export
http510.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http510' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http510.response <- http510_
#' @export
http510.HttpResponse <- http510_
#' @export
http510.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http510_(response, behavior, message_template)
}

http511_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNetworkAuthenticationRequired$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http511 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http511")
}
#' @export
http511.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http511' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http511.response <- http511_
#' @export
http511.HttpResponse <- http511_
#' @export
http511.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http511_(response, behavior, message_template)
}

http598_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNetworkReadTimeoutError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http598 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http598")
}
#' @export
http598.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http598' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http598.response <- http598_
#' @export
http598.HttpResponse <- http598_
#' @export
http598.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http598_(response, behavior, message_template)
}

http599_ <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stat <- fetch_status(response)
  if (muffle) if (stat < 300) return(invisible(response))
  behavior <- toggle_behavior(stat, behavior)
  tmp <- HTTPNetworkConnectTimeoutError$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http599 <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  UseMethod("http599")
}
#' @export
http599.default <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  stop("no 'http599' method for ", class(response)[[1L]], call. = FALSE)
}
#' @export
http599.response <- http599_
#' @export
http599.HttpResponse <- http599_
#' @export
http599.list <- function(response, behavior = "auto", message_template, muffle = FALSE) {
  check_curl_list(response)
  http599_(response, behavior, message_template)
}

