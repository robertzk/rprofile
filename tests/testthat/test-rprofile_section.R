context("rprofile_section")

lapply(c("envvar", "option", "packages", "callback", "code"), function(section_type) {
  test_that(paste0("it can create a ", section_type, " section"), {
    expect_is(rprofile_section(section_type), "rprofile_section")
  })
})

describe("Rprofile section operations", {
  describe("character sections", {
    test_that("we can add a character section", {
      section <- rprofile_section("envvar")
      expect_equal(modify_rprofile_section(section, "foo", "bar", "add")$data,
                   c("foo" = "bar"))
    })

    test_that("we can remove a character section", {
      section <- rprofile_section("envvar")
      section <- modify_rprofile_section(section, "foo", "bar", "add")
      section <- modify_rprofile_section(section, "qux", "dok", "add")
      expect_equal(modify_rprofile_section(section, "foo", operation = "remove")$data,
                   c("qux" = "dok"))
    })

    test_that("we can replace a section entirely", {
      section <- rprofile_section("envvar")
      section <- modify_rprofile_section(section, "foo", "bar", "add")
      section <- modify_rprofile_section(section, "qux", "dok", "add")
      replacement <- c("qux" = "dok", "foo" = "bar")
      expect_equal(
        modify_rprofile_section(section, "foo", replacement, operation = "replace")$data,
        replacement
      )
    })
  })
})

