library(readr)
library(here)
library(synthpop)
library(dplyr)

s12_course_data <-
  read_csv(here(
    "data",
    "raw",
    "s12-course-data.csv"
  ))

s12_course_data_ss <- select(s12_course_data, CourseSectionOrigID, Bb_UserPK)
s12_course_data <- select(s12_course_data, Points_Possible, Points_Earned, Gender)
s12_course_data <- s12_course_data %>% 
  mutate(Points_Earned = as.numeric(Points_Earned))
s12_course_data_syn <- syn(s12_course_data)

s12_course_data_syn_final <- bind_cols(s12_course_data_ss, as_tibble(s12_course_data_syn$syn))

write_csv(s12_course_data_syn_final, here(
  "data",
  "processed",
  "s12-course-data.csv"
))

s12_pre_survey <-
  read_csv(here(
    "data",
    "raw",
    "s12-pre-survey.csv"
  ))

s12_pre_survey <- select(s12_pre_survey, RespondentId, opdata_CourseID, Q1MaincellgroupRow1:Q1MaincellgroupRow10)
s12_pre_survey_syn <- syn(s12_pre_survey)

write_csv(as_tibble(s12_pre_survey_syn$syn), here(
  "data",
  "processed",
  "s12-pre_survey.csv"
))

s12_time_spent <-
  read_csv(here(
    "data",
    "raw",
    "s12-course-minutes.csv"
  ))

s12_time_spent <- select(s12_time_spent, Bb_UserPK, CourseSectionOrigID, TimeSpent)
s12_time_spent_syn <- syn(s12_time_spent)

write_csv(as_tibble(s12_time_spent_syn$syn), here(
  "data",
  "processed",
  "s12-course-minutes.csv"
))
