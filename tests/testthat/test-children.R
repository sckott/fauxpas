context("http children methods")

test_that("http children methods: HTTPContinue", {
  skip_on_cran()

  library("crul")
  res <- HttpClient$new("https://httpbin.org/status/405")$get()

  aa <- HTTPMethodNotAllowed$new()
  bb <- HTTPMethodNotAllowed$new(behavior = "message")
  cc <- HTTPMethodNotAllowed$new(behavior = "warning")

  expect_error(aa$do(res), "Method Not Allowed")
  expect_message(bb$do(res), "Method Not Allowed")
  expect_warning(cc$do(res), "Method Not Allowed")

  expect_null(suppressMessages(bb$do(res)))
  #expect_null(suppressWarnings(cc$do(res)))

  expect_error(aa$do_verbose(res), "Method Not Allowed")
  expect_error(aa$do_verbose(res), "Method Not Allowed")
  expect_message(bb$do_verbose(res), "Method Not Allowed")
  expect_warning(cc$do_verbose(res), "Method Not Allowed")
})

test_that("http fails well", {
  skip_on_cran()

  expect_error(http(5), "no 'http' method for numeric")
  expect_error(http("asdfadfasf"), "no 'http' method for character")
  expect_error(http(mtcars), "no 'http' method for data.frame")

  library("crul")
  res <- HttpClient$new("https://httpbin.org/status/418")$get()

  # behavior fails well
  expect_error(http(res, behavior = "asdfasdf"),
               "'behavior' must be one of")

  # message_template fails well
  expect_error(http(res, message_template = 5),
               "'message_template' must be of class character")
})

