library(readr)
library(here)
library(simstudy)

s12_course_data <-
  read_csv(here(
    "data",
    "raw",
    "s12-course-data.csv"
  ))

s12_course_data <- select(s12_course_data, )
s12_course_data_syn <- syn(s12_course_data)

s12_pre_survey <-
  read_csv(here(
    "data",
    "raw",
    "s12-pre-survey.csv"
  ))

s12_pre_survey <- select(s12_pre_survey, )
s12_pre_survey_syn <- syn(s12_pre_survey)

s12_time_spent <-
  read_csv(here(
    "data",
    "raw",
    "s12-course-minutes.csv"
  ))

s12_time_spent <- select(s12_time_spent, )
s12_time_spent_syn <- syn(s12_time_spent)