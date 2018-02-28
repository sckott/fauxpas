error_http_generator <- function(code) {
  sprintf(
    "http%2$s_ <- function(response, behavior = \"stop\", message_template) {
  tmp <- %s$new(behavior = behavior, message_template = message_template)
  tmp$do(response)
}
#' @export
#' @rdname http
http%2$s <- function(response, behavior = \"stop\", message_template) {
  UseMethod(\"http%2$s\")
}
#' @export
http%2$s.default <- function(response, behavior = \"stop\", message_template) {
  stop(\"no 'http%2$s' method for \", class(response), call. = FALSE)
}
#' @export
http%2$s.response <- http%2$s_
#' @export
http%2$s.HttpResponse <- http%2$s_
#' @export
http%2$s.list <- function(response, behavior = \"stop\", message_template) {
  check_curl_list(response)
  http%2$s_(response, behavior, message_template)
}\n",

    find_http_method(code), code
  )
}

find_http_method <- function(code) {
  chnames <- vapply(
    fauxpas:::fauxpas_env$http_children,
    function(x) x$public_fields$name,
    ""
  )
  chnames[which(
    vapply(
      fauxpas:::fauxpas_env$http_children,
      function(x) x$public_fields$status_code,
      1
    ) == code
  )]
}

get_codes <- function(x) {
  vapply(
    fauxpas:::fauxpas_env$http_children,
    function(x) x$public_fields$status_code,
    1
  )
}

http_star_test_generator <- function(code) {
  sprintf(
    "
test_that(\"http%2$s works\", {
  skip_on_cran()

  expect_message(http%2$s(res, behavior = \"message\"), \"I'm a teapot\")
  expect_warning(http%2$s(res, behavior = \"warning\"), \"I'm a teapot\")
  expect_error(http%2$s(res), \"I'm a teapot\")

  expect_null(suppressMessages(http%2$s(res, behavior = \"message\")))
})

test_that(\"http%2$s fails well\", {
  skip_on_cran()

  expect_error(http%2$s(5), \"no 'http%2$s' method for numeric\")

  res <- HttpClient$new(\"https://httpbin.org/status/418\")$get()

  # behavior fails well
  expect_error(http%2$s(res, behavior = \"asdfasdf\"),
     \"'behavior' must be one of\")

  # message_template fails well
  expect_error(http%2$s(res, message_template = 5),
     \"'message_template' must be of class character\")
})

test_that(\"http%2$s fails well with malformed curl pkg response objects\", {
  skip_on_cran()

  expect_error(http%2$s(list()),
     \"curl response list must have named elements\")
  expect_error(http%2$s(list(a = 5)),
     \"found list names 'a' - indicating input not likely a\")
  alst <- list(url=5, status_code=5, headers=5, modified=5, times=5)
  expect_error(http%2$s(alst), \"is not TRUE\")
})\n",

    find_http_method(code), code
  )
}
