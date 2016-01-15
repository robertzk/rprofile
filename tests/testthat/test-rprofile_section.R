context("rprofile_section")

lapply(c("envvar", "option", "packages", "callback", "code"), function(section_type) {
  test_that(paste0("it can create a ", section_type, " section"), {
    expect_is(rprofile_section(section_type), "rprofile_section")
  })
})

