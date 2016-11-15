context("Error")

test_that("Error works", {
  skip_on_cran()

  x <- Error$new()
  z <- Error$new(message_template = "{{status}} - {{message}}")

  expect_is(x, "Error")
  expect_is(z, "Error")

  expect_is(x$behavior, "character")
  expect_is(z$behavior, "character")

  expect_null(x$message_template)
  expect_is(z$message_template, "character")
})

