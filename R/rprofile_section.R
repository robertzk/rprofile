## All portions of the Rprofiles are abstracted as "section" objects
## which we can specialize to their various types ("envvar", "option", etc.).
## This allows us to cleanly specify how to create and modify various sections.
#' Create a new object recording an Rprofile section.
#'
#' The possible section types are
#' \code{c("envvar", "option", "packages", "callback", "code")}.
#'
#' @param type character. The type of the section.
#' @return An \code{rprofile_section} object.
rprofile_section <- function(type) {
  ## We can use `match.arg` to error early if the section is not
  ## one of the allowed types.
  type <- match.arg(type, c("envvar", "option", "packages", "callback", "code"))
  
  structure(class = c(paste0("rprofile_", type, "_section"), "rprofile_section"),
    list(
      type = type,
      data = rprofile_section_new(type)
    )
  )
}

rprofile_section_new <- function(type) {
  switch(type,
    envvar   = character(0),
    option   = list(),
    packages = character(0),
    callback = list(),
    code     = list()
  )
}


