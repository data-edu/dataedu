## code to prepare `sci_mo_data` dataset goes here

library(readr)
library(here)

sci_mo_data <- read_csv(here("data", "processed", "sci_mo_data.csv"))
usethis::use_data(sci_mo_data, overwrite = TRUE)
