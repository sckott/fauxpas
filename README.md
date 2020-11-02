fauxpas
=======



[![R-check](https://github.com/ropensci/fauxpas/workflows/R-check/badge.svg)](https://github.com/ropensci/fauxpas/actions?query=workflow%3AR-check)
[![cran checks](https://cranchecks.info/badges/worst/fauxpas)](https://cranchecks.info/pkgs/fauxpas)
[![cran version](http://www.r-pkg.org/badges/version/fauxpas)](https://cran.r-project.org/package=fauxpas)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/fauxpas)](https://github.com/metacran/cranlogs.app)

`fauxpas` does http errors

* HTTP error classes more in line with Ruby/Python/Etc.
* An error class for each HTTP status in case a user wants to
be specific to an HTTP status code, and general purpose handlers
for any error
* Work with any of the major R http clients: `crul`, `curl`, `httr`, (maybe
`RCurl` later)
* Provide flexiblity for what to do on an HTTP error, including
custom functions and message templates

Info Links:

* HTTP on wikipedia: <https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol>
* HTTP2 on wikipedia: <https://en.wikipedia.org/wiki/HTTP/2>
* HTTP/1.1: <https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html>
* HTTP/2: <https://tools.ietf.org/html/rfc7540>

## Install

CRAN version


```r
install.packages("fauxpas")
```

Dev version


```r
remotes::install_github("ropensci/fauxpas")
```


```r
library("fauxpas")
```

## use with crul


```r
library("crul")
cli <- HttpClient$new("https://httpbin.org/status/414")
res <- cli$get()
http(res)
#> Error: Request-URI Too Long (HTTP 414).
http414(res)
#> Error: Request-URI Too Long (HTTP 414).
```


```r
x <- HTTPRequestURITooLong$new()
x$do_verbose(res)
#> Error: Request-URI Too Long (HTTP 414).
#> - The server is refusing to service the request because the Request-URI is
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
resp <- curl::curl_fetch_memory("https://httpbin.org/status/404", h)
http(resp)
#> Error: Not Found (HTTP 404).
http404(resp)
#> Error: Not Found (HTTP 404).
```


```r
x <- HTTPNotFound$new()
x$do_verbose(resp)
#> Error:  Not Found (HTTP 404).
#>  - The server has not found anything matching the Request-URI. No indication is
#> given of whether the condition is temporary or permanent. The 410 (Gone) status
#> code SHOULD be used if the server knows, through some internally configurable
#> mechanism, that an old resource is permanently unavailable and has no forwarding
#> address. #> This status code is commonly used when the server does not wish to
#> reveal exactly why the request has been refused, or when no other response is
#> applicable.
```

## use with httr


```r
library("httr")
res <- GET("https://httpbin.org/status/405")
http405(res)
#> Error: Method Not Allowed (HTTP 405).
```


```r
x <- HTTPMethodNotAllowed$new()
x$do_verbose(res)
#> Error: Method Not Allowed (HTTP 405).
#>  - The method specified in the Request-Line is not allowed for the resource
#> identified by the Request-URI. The response MUST include an Allow header
#> containing a list of valid methods for the requested resource.
```

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/fauxpas/issues)
* License: MIT
* Get citation information for `fauxpas` in R doing `citation(package = 'fauxpas')`
* Please note that this package is released with a [Contributor Code of Conduct](https://ropensci.org/code-of-conduct/). By contributing to this project, you agree to abide by its terms.

[![rofooter](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
