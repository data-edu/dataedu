library(tidyverse)
library(synthpop)

d <- read_csv(here::here("data", "raw", "sci_mo_data.csv"))

#filtering the data to only include spring 2017 data
d <-d %>% filter(!str_detect(course_ID, "S217"))

#selecting only the variables we are interested in: motivation, time spent in the course, grade in the course, subject, 
#enrollment information, positive and negative emotions, and cognitive processing
d_raw <- d %>% 
  dplyr::select(pre_int, pre_uv,  pre_percomp, time_spent,course_ID, final_grade, subject, enrollment_reason, semester, enrollment_status, cogproc, social, posemo, negemo, n, section, post_int, post_uv, post_percomp, WC)

d_syn <- syn(d_raw)

write_csv(d_syn$syn, here::here("data", "processed", "sci_mo_data.csv"))