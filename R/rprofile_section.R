#' Create an object recording an Rprofile section.
#'
#' The possible section types are
#' \code{c("envvar", "option", "packages", "callback", "code")}.
#'
#' @param type character. The type of the section.
#' @param data list. Any metadata associated with the section
#'   (will vary by section).
#' @return An \code{rprofile_section} object.
rprofile_section <- function(type, data) {
  structure(class = "rprofile_section",
    list(
      type = type,
      data = data
    )
  )
}


