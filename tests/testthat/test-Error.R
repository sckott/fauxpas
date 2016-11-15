context("Error")

test_that("Error works", {
  skip_on_cran()

  x <- Error$new()
  z <- Error$new(message_template = "{{status}} - {{message}}")

  expect_is(x, "Error")
  expect_is(z, "Error")

  expect_is(x$behavior, "character")
  expect_is(z$behavior, "character")

  expect_is(x$message_template, "character")
  expect_match(x$message_template, "HTTP")
  expect_is(z$message_template, "character")
  expect_false(grepl("HTTP", z$message_template))
  expect_false(grepl("reason", z$message_template))
})

