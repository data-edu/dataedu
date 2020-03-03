library(testthat)
library(dataedu)
context("test-mass_install.R")

test_that("mass_install() works", {
  expect_true("apaTables" %in% rownames(installed.packages()))
  expect_true("tidytext" %in% rownames(installed.packages()))
})