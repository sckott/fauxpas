context("Error")

test_that("Error works", {
  skip_on_cran()

  x <- Error$new(name = "hello")
  y <- Error$new(name = "hello", behavior = function(x) x ^ 2)
  z <- Error$new(name = "hello", message_template = "{{status}} - {{message}}")

  expect_is(x, "Error")
  expect_is(y, "Error")
  expect_is(y, "Error")

  expect_is(x$behavior, "character")
  expect_is(y$behavior, "function")
  expect_is(z$behavior, "character")

  expect_null(x$message_template)
  expect_null(y$message_template)
  expect_is(z$message_template, "character")
})

