Rprofile [![Build Status](https://travis-ci.org/robertzk/rprofile.svg?branch=master)](https://travis-ci.org/robertzk/rprofile) [![Coverage Status](https://coveralls.io/repos/robertzk/rprofile/badge.svg?branch=master)](https://coveralls.io/r/robertzk/rprofile)
============

Managing your [Rprofile](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Startup.html)
across several computers or re-using pieces across a team can be cumbersome.
To solve this problem, the rprofile package provides an S3-backed
Rprofile that persists the contents of your Rprofile to Amazon's
S3 storage and allows you to define "shared" sections if you
work on a common team.

## Examples

```r
# ~/.Rprofile
## Your rprofile will be loaded from this S3 key.
rprofile::rprofile("s3://yourbucket/your/key")
# options("rprofile.s3key") will be set to the above key.
```

```
# You can construct and manipulate the Rprofile from the console.
# Constructing the rprofile S3 key.
library(rprofile)
options(rprofile.s3key = "s3://yourbucket/your/key")
# Alternatively, each of the methods below has an `s3key` argument
# you can pass instead of using the option above.

# Set an environment variable in the Rprofile.
rprofile_envvar("ENV_VAR") <- "value"
rprofile_envvar("ENV_VAR") # will be "value"
rprofile_envvars() # All env vars in named list format.

# Set a global option in the Rprofile.
rprofile_option("option_name") <- "value"
rprofile_option("option_name") # will be "value"
rprofile_options()

# Set packages to load on startup.
rprofile_package("package_name")
rprofile_packages() # List all autoloaded packages.
rprofile_packages(c("pkg1", "pkg2")) # Overwrite packages.

# Add a task callback: https://stat.ethz.ch/R-manual/R-devel/library/base/html/taskCallback.html
rprofile_callback(function(expr, value, ok, visible) { print("Hello") }, , add = TRUE)

# Sections of code to run after everything else has been loaded.
rprofile_code({
  some_expression()
  to$execute()
}, add = TRUE) # By default, code will run at the end of the Rprofile.
# You can also have code execute after the end of each section
# ("envvar", "option", "packages", "callback").
rprofile_code(print("Hello"), section = "envvar") 

# Dump the rprofile code in human-readable format.
rprofile_dump()

# You can also add "shared" rprofiles by referencing a vector of S3 keys.
rprofile_shared() # S3 keys to additional "shared" Rprofiles.
                  # These will be loaded as well.
rprofile_shared("s3://yourbucket/shared/key", add = TRUE) # Add a shared rprofile.
rprofile_shared("s3://yourbucket/shared/key") # Replace shared Rprofiles.
```

## Installation

This package is not yet available from CRAN (as of January 14, 2016).
To install the latest development builds directly from GitHub, run this instead:

```R
if (!require("devtools")) install.packages("devtools")
if (!require("s3mpi")) devtools::install_github("robertzk/s3mpi")
devtools::install_github("robertzk/rprofile")
```

### License

This project is licensed under the MIT License:

Copyright (c) 2016 Robert Krzyzanowski

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### Authors

This package was created by Robert Krzyzanowski, rob@syberia.io.

