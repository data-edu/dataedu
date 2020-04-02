library(testthat)
library(dataedu)
context("test-install_dataedu.R")

test_that("install_dataedu() works", {
  expect_true("apaTables" %in% rownames(installed.packages()))
})
