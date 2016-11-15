error_http_generator <- function(code) {
  sprintf(
    "error_%2$s_ <- function(x, behavior = \"stop\", message_template = NULL) {
  tmp <- %s$new(behavior = behavior, message_template = message_template)
  tmp$do(x)
}
#' @export
#' @rdname error_http
error_%2$s <- function(x, behavior = \"stop\", message_template = NULL) {
  UseMethod(\"error_%2$s\")
}
#' @export
error_%2$s.default <- function(x, behavior = \"stop\", message_template = NULL) {
  stop(\"no 'error_%2$s' method for \", class(x), call. = FALSE)
}
#' @export
error_%2$s.response <- error_%2$s_
#' @export
error_%2$s.HttpResponse <- error_%2$s_
#' @export
error_%2$s.list <- error_%2$s_\n",

    find_http_method(code), code
  )
}

find_http_method <- function(code) {
  chnames <- vapply(
    fauxpas::fauxpas_env$http_children,
    function(x) x$public_fields$name,
    ""
  )
  chnames[which(
    vapply(
      fauxpas::fauxpas_env$http_children,
      function(x) x$public_fields$status_code,
      1
    ) == code
  )]
}

get_codes <- function(x) {
  vapply(
    fauxpas::fauxpas_env$http_children,
    function(x) x$public_fields$status_code,
    1
  )
}
