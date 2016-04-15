fauxpas
=======



[![Build Status](https://travis-ci.org/sckott/fauxpas.svg)](https://travis-ci.org/sckott/fauxpas)
[![codecov.io](https://codecov.io/github/sckott/fauxpas/coverage.svg?branch=master)](https://codecov.io/github/sckott/fauxpas?branch=master)

`fauxpas` does http errors

The plan is:

* HTTP error classes more in line with Ruby/Python/Etc.
* An error class for each HTTP error in case a user wants to 
be specific to an HTTP error, and general purpose handlers 
for any error
* Work with any of the major R http clients: `httr`, `curl`, `RCurl` - 
so use probably S3 dispatch to handle inputs from those clients 
appropriately
* Provide flexiblity for what to do on an HTTP error, including 
custom functions

## Install


```r
devtools::install_github("sckott/fauxpas")
```


```r
library("fauxpas")
```

## use with httr


```r
library("httr")
res <- GET("https://httpbin.org/status/414")
error_414(res)
#> Error in tmp$do(x) : Request-URI Too Long (HTTP 414).
#> The server is refusing to service the request because the Request-URI is
#>    longer than the server is willing to interpret. This rare condition is only likely
#>    to occur when a client has improperly converted a POST request to a GET request
#>    with long query information, when the client has descended into a URI black hole
#>    of redirection (e.g., a redirected URI prefix that points to a suffix of itself),
#>    or when the server is under attack by a client attempting to exploit security
#>    holes present in some servers using fixed-length buffers for reading or
#>    manipulating the Request-URI.
```

## Meta

* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
