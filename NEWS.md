fauxpas 0.5.0
=============

### NEW FEATURES

* changed default for parameter `behavior` in function `http()` to `auto` instead of `stop` (#12)
* `http()` gains new parameter `muffle` (logical) to optionally muffle any warning/message from http status codes in series  (#12)


fauxpas 0.2.0
=============

### NEW FEATURES

* New function `find_error_class()` for a user to get a `HTTP*` class object with just the status code (#10)
* Added a vignette (#4)
* Added an additional object type that fauxpas responds to: the `Response` from the `webmockr` package and the `VcrResponse` from the `vcr` package (#9)

### MINOR IMPROVEMENTS

* `behavior_type` variable in the `Error` class object is now a private variable, and can be set with a new method `$set_behavior()` (#7)
* For `http*()` S3 list methods added additional checks for response objects from `curl` package that are simple lists, so are challenging to verify (#5)
* Added tests for all `http*` methods via a generator (#11)

### BUG FIXES

* Fixed `message_template` behavior, see above related comment about new message template param (#8)


fauxpas 0.1.0
=============

### NEW FEATURES

* Released to CRAN.
