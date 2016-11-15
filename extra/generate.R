#!/usr/bin/env Rscript
library(methods)
path_R <- "../R"
destfile <- "error_http_generated.R"
source("funs.R")

codes <- get_codes()
txts <- unlist(lapply(codes, error_http_generator))

writeLines(
  txts,
  file.path(path_R, destfile)
)
