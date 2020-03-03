library(testthat)
library(dataedu)
context("test-mass_install.R")

test_that("mass_install() works", {
  with_mock(expect_error_free(expect_true(
    "apaTables" %in% rownames(installed.packages())
  )),
  apaTables::dating_wide)
})