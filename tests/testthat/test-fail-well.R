test_that("Error fails well", {
  skip_on_cran()

  expect_error(Error$new(), "argument \"name\" is missing")

  expect_error(Error$new(a = 5), "unused argument")

  expect_error(Error$new(name = "foobar", behavior = 5),
               "'behavior' must be one of stop, warning, message, or a function")
})
