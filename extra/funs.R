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
http%2$s.list <- http%2$s_\n",

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
