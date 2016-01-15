## This file forms the bulk of the exported helpers provided
## by the package for modifying the Rprofile.
#' Access an R profile environment variable.
#'
#' @param envvar character. The name of the environment variable.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'   By default, \code{option("rprofile.s3key")}.
#' @param remove logical. If not missing and set to \code{TRUE},
#'   remove the \code{envvar} instead. 
#' @export
#' @return The character value of the environment variable.
rprofile_envvar <- function(envvar, s3key, remove) {
  
}

#' Modify an R profile environment variable.
#'
#' @param envvar character. The name of the environment variable.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'    By default, \code{option("rprofile.s3key")}.
#' @param The value to set.
#' @export
#' @return The character value of the environment variable.
`rprofile_envvar<-` <- function(envvar, s3key, value) {
  
}

#' List all Rprofile environment variables.
#' 
#' @param options list. If not missing, replace envvars instead.
#' @return A named character vector of environment variables.
rprofile_envvars <- function(options) {

}

#' Access an R profile global option.
#'
#' @param envvar character. The name of the global option.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'   By default, \code{option("rprofile.s3key")}.
#' @param remove logical. If not missing and set to \code{TRUE},
#'   remove the \code{option} instead. 
#' @export
#' @return The character value of the global option.
rprofile_option <- function(envvar, s3key, remove) {
  
}

#' Modify an R profile global option.
#'
#' @param option character. The name of the global option.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'    By default, \code{option("rprofile.s3key")}.
#' @param The value to set.
#' @export
#' @return The character value of the global option.
`rprofile_option<-` <- function(option, s3key, value) {
  
}

#' List all Rprofile global options.
#' 
#' @param options list. If not missing, replace options instead.
#' @return A named list of global options.
rprofile_options <- function(options) {

}

#' Access an R profile autoloaded package.
#'
#' @param package character. The name of the autoloaded package.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'   By default, \code{option("rprofile.s3key")}.
#' @param remove logical. If not missing and set to \code{TRUE},
#'   remove the \code{package} instead. 
#' @export
#' @return The character value of the autoloaded package.
rprofile_package <- function(package, s3key, remove) {
  
}

#' Modify an R profile autoloaded package.
#'
#' @param package character. The name of the autoloaded package.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'    By default, \code{option("rprofile.s3key")}.
#' @param The value to set.
#' @export
#' @return The character value of the autoloaded package.
`rprofile_package<-` <- function(package, s3key, value) {
  
}

#' List all Rprofile autoloaded packages.
#' 
#' @param packages list. If not missing, replace packages instead.
#' @return A named list of autoloaded packages.
rprofile_packages <- function(packages) {

}

#' Access an R profile task callback.
#'
#' @param callback character. The name of the task callback.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'   By default, \code{option("rprofile.s3key")}.
#' @param remove logical. If not missing and set to \code{TRUE},
#'   remove the \code{callback} instead. 
#' @export
#' @return The character value of the task callback.
rprofile_callback <- function(callback, s3key, remove) {
  
}

#' Modify an R profile task callback.
#'
#' @param callback character. The name of the task callback.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'    By default, \code{option("rprofile.s3key")}.
#' @param The value to set.
#' @export
#' @return The character value of the task callback.
`rprofile_callback<-` <- function(callback, s3key, value) {
  
}

#' List all Rprofile task callbacks.
#' 
#' @param callbacks list. If not missing, replace callbacks instead.
#' @return A named list of task callbacks.
rprofile_callbacks <- function(callbacks) {

}

#' Access an R profile code section.
#'
#' @param code character. The name of the code section or a code expression.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'   By default, \code{option("rprofile.s3key")}.
#' @param remove logical. If not missing and set to \code{TRUE},
#'   remove the \code{code} instead. 
#' @export
#' @return The character value of the code section.
rprofile_code <- function(code, s3key, remove) {
  
}

#' Modify an R profile code section.
#'
#' @param code character. The name of the code section.
#' @param s3key character. The s3key in which the Rprofile is stored.
#'    By default, \code{option("rprofile.s3key")}.
#' @param The value to set.
#' @export
#' @return The character value of the code section.
`rprofile_code<-` <- function(code, s3key, value) {
  
}

#' List all Rprofile code sections.
#' 
#' @param codes list. If not missing, replace codes instead.
#' @return A named list of code sections.
rprofile_codes <- function(codes) {

}

