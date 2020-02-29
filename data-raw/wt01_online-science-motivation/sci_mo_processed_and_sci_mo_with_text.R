library(tidyverse)

# for sci_mo_processed
sci_mo_processed <- read_csv(here::here("data-raw", "wt01_online-science-motivation", "processed", "sci_mo_processed.csv"))
usethis::use_data(sci_mo_processed, overwrite = TRUE)

# for sci_mo_with_text
old_data_with_liwc <- read_csv(here::here("data-raw", "wt01_online-science-motivation", "raw", "sci_mo_data.csv"))
old_data_with_liwc <- old_data_with_liwc %>% 
  dplyr::select(student_id = student_ID, cogproc:WC, n)

sci_mo_with_text <- sci_mo_processed %>% 
  left_join(old_data_with_liwc)

sci_mo_with_text

usethis::use_data(sci_mo_with_text, overwrite = TRUE)


