library(testthat)
library(dataedu)
context("test-theme_dataedu.R")

test_that("dataedu theme works", {
  expect_is(theme_dataedu(), "theme")
})