library(tidyverse)

sci_mo_processed <- read_csv(here::here("data-raw", "wt01_online-science-motivation", "processed", "sci_mo_processed.csv"))
usethis::use_data(sci_mo_processed, overwrite = TRUE)
