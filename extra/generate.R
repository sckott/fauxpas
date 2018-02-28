#!/usr/bin/env Rscript
library(methods)
path_R <- "../R"
destfile <- "error_http_generated.R"
source("funs.R")

codes <- get_codes()
txts <- unlist(lapply(codes, error_http_generator))

writeLines(
  c("# generated from extra/generate.R\n", txts),
  file.path(path_R, destfile)
)



# generate tests for http* methods
path_R <- "../tests/testthat"
destfile <- "test-http_star.R"
source("funs.R")

codes <- get_codes()
txts <- unlist(lapply(codes, http_star_test_generator))

writeLines(
  c('# generated from extra/generate.R\ncontext("http* star functions")\n\nlibrary("crul")\nload("cached_teapot.rda"); res <- cached_teapot\n',
    txts),
  file.path(path_R, destfile)
)
