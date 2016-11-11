fauxpas
=======



[![Build Status](https://travis-ci.org/ropenscilabs/fauxpas.svg)](https://travis-ci.org/ropenscilabs/fauxpas)
[![codecov.io](https://codecov.io/github/ropenscilabs/fauxpas/coverage.svg?branch=master)](https://codecov.io/github/ropenscilabs/fauxpas?branch=master)

`fauxpas` does http errors

The plan is:

* HTTP error classes more in line with Ruby/Python/Etc.
* An error class for each HTTP status in case a user wants to
be specific to an HTTP status code, and general purpose handlers
for any error
* Work with any of the major R http clients: `crul`, `curl`, `httr`, (maybe
`RCurl` later) - so use probably S3 dispatch to handle inputs from those
clients appropriately
* Provide flexiblity for what to do on an HTTP error, including
custom functions and message templates

Links:

* HTTP on wikipedia: <https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol>
* HTTP2 on wikipedia: <https://en.wikipedia.org/wiki/HTTP/2>
* HTTP/1.1: <https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html>
* HTTP/2: <https://tools.ietf.org/html/rfc7540>

## Install


```r
devtools::install_github("ropenscilabs/fauxpas")
```


```r
library("fauxpas")
```

## use with crul


```r
library("crul")
cli <- HttpClient$new("https://httpbin.org/status/414")
res <- cli$get()
error_http(res)
#> Error: Request-URI Too Long (HTTP 414).
error_414(res)
#> Error: Request-URI Too Long (HTTP 414).
```


```r
x <- HTTPRequestURITooLong$new()
x$do_verbose(res)
#> Error: Request-URI Too Long (HTTP 414).
#> The server is refusing to service the request because the Request-URI is
#>    longer than the server is willing to interpret. This rare condition is only likely
#>    to occur when a client has improperly converted a POST request to a GET request
#>    with long query information, when the client has descended into a URI black hole
#>    of redirection (e.g., a redirected URI prefix that points to a suffix of itself),
#>    or when the server is under attack by a client attempting to exploit security
#>    holes present in some servers using fixed-length buffers for reading or
#>    manipulating the Request-URI.
```

## use with curl


```r
library("curl")
h <- curl::new_handle()
curl::handle_setopt(h)
resp <- curl::curl_fetch_memory("https://httpbin.org/status/418", h)
error_http(resp)
#> Error: I'm a teapot (HTTP 418).
error_418(resp)
#> Error: I'm a teapot (HTTP 418).
```


```r
x <- HTTPTeaPot$new()
x$do_verbose(resp)
#> Error: I'm a teapot (HTTP 418).
#>  not a real HTTP status code, but often used for demonstration purposes
```

## use with httr


```r
library("httr")
res <- GET("https://httpbin.org/status/404")
error_404(res)
#> Error: Not Found (HTTP 404).
```


```r
x <- HTTPRequestNotFound$new()
x$do_verbose(res)
#> Error: Not Found (HTTP 404).
#> The server has not found anything matching the Request-URI. No ...
```

## Meta

* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md).
By participating in this project you agree to abide by its terms.
