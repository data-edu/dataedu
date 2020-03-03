library(testthat)
library(dataedu)
context("test-theme_dataedu.R")

test_that("dataedu theme works", {
  expect_is(theme_dataedu(), "theme")
})

test_that("dataedu theme has transparent background", {
  thm <- theme_dataedu()
  expect_equal(thm$legend.background$fill, "transparent")
  expect_equal(thm$legend.key$fill, "transparent")
})
