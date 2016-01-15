#' Load an Rprofile from a given S3 key.
#'
#' An Rprofile stored in an S3 key is divided into several sections.
#'
#' \itemize{
#'   \item{\emph{Environment variables}}{Environment variables
#'     to set during startup of the R session. These can be
#'     mutated and accessed using the \code{\link{rprofile_envvar}}
#'     and \code{\link{rprofile_envvars}} functions.}
#'   \item{\emph{Global options}}{Options to set during startup of
#'     the R session. These can be mutated and accessed using the
#'     \code{\link{rprofile_option}} and \code{\link{rprofile_options}}
#'     functions.}
#'   \item{\emph{Packages}}{Packages to load during startup of 
#'     the R session. These can be mutated and accessed using the
#'     \code{\link{rprofile_packages}} and \code{\link{rprofile_packages}}
#'     functions.}
#'   \item{\emph{Task callbacks}}{\link[=addTaskCallback]{Task callbacks}
#'     loaded during startup of the R session.
#'     These can be mutated and accessed using the
#'     \code{\link{rprofile_callback}} and \code{\link{rprofile_callbacks}}
#'     functions.}
#'   \item{\emph{Code sections}}{Any additional code to run after the above
#'     sections or at the end of the Rprofile, using \code{\link{rprofile_code}}.}
#' }
#'
#' Additional "shared" Rprofiles can be referenced (in a similar S3 format)
#' by passing the shared file to the \code{\link{rprofile_shared}} function.
#'
#' @param key character. The S3 key to load the Rprofile from.
#' @export
#' @examples \dontrun{
#'   # Load an Rprofile from an S3 key.
#'   # Note this will set options(rprofile.s3key = "s3://yourbucket/your/key")
#'   # Modifying the rprofile using rprofile_envvar, rprofile_option, etc.
#'   # will record the changes in the S3 key.
#'   rprofile("s3://yourbucket/your/key")
#' }
rprofile <- function(key) {
}

