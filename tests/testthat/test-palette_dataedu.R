library(testthat)
library(dataedu)
context("test-palette_dataedu.R")

test_that("dataedu_pal() main works", {
  p <- dataedu_pal()
  expect_is(p, "function")
  for (i in 1:5) {
    expect_hexcolor(p(i))
  }
})

test_that("dataedu_pal() reverse works", {
  p <- dataedu_pal(reverse = TRUE)
  expect_is(p, "function")
  for (i in 1:5) {
    expect_hexcolor(p(i))
  }
})

test_that("scale_color_dataedu() works", {
  expect_is(scale_color_dataedu(), "ScaleDiscrete")
})

test_that("scale_fill_dataedu() works", {
  expect_is(scale_fill_dataedu(), "ScaleDiscrete")
})
