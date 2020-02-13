library(tidyverse)
library(synthpop)

# # this code to prepare processed data from raw data is commented out so that
# # only the code that turns the processed data into package data with usethis::use_data()

sci_mo_data <- read_csv(here::here("data-raw", "wt01_online-science-motivation", "processed", "sci_mo_processed.csv"))
usethis::use_data(sci_mo_data, overwrite = TRUE)
