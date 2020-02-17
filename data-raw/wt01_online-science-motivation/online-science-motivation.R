library(readr)
library(here)
library(synthpop)
library(dplyr)

# # this and subsequent code to prepare processed data from raw data is commented out so that
# # only the code that turns the processed data into package data with usethis::use_data()

s12_course_data <-
  read_csv(here(
    "data-raw",
    "wt01_online-science-motivation",
    "raw",
    "s12-course-data.csv"
  ))

s12_course_data_ss <- dplyr::select(s12_course_data, CourseSectionOrigID, Bb_UserPK, Gradebook_Item, Grade_Category, FinalGradeCEMS)
s12_course_data <- dplyr::select(s12_course_data, Points_Possible, Points_Earned, Gender)
s12_course_data <- s12_course_data %>%
  mutate(Points_Earned = as.numeric(Points_Earned))
s12_course_data_syn <- syn(s12_course_data)

s12_course_data_syn_final <- bind_cols(s12_course_data_ss, as_tibble(s12_course_data_syn$syn))

write_csv(s12_course_data_syn_final, here(
  "data-raw",
  "wt01_online-science-motivation",
  "processed",
  "s12-course-data.csv"
))

course_data <- read_csv(here::here("data-raw", 
                                   "wt01_online-science-motivation",
                                   "processed",
                                   "s12-course-data.csv"))

usethis::use_data(course_data, overwrite = TRUE)

s12_pre_survey <-
  read_csv(here(
    "data-raw", "wt01_online-science-motivation",
    "raw",
    "s12-pre-survey.csv"
  ))

s12_pre_survey_ss <- dplyr::select(s12_pre_survey, Q1MaincellgroupRow1:Q1MaincellgroupRow10)
s12_pre_survey_no_syn <- dplyr::select(s12_pre_survey, opdata_CourseID, opdata_username)
s12_pre_survey_syn <- syn(s12_pre_survey_ss)

s12_pre_survey_fin <- bind_cols(s12_pre_survey_no_syn, as_tibble(s12_pre_survey_syn$syn))

s12_pre_survey_fin <- s12_pre_survey_fin %>% 
  select(opdata_username,
         opdata_CourseID,
         everything())

write_csv(s12_pre_survey_fin, here(
  "data-raw", "wt01_online-science-motivation",
  "processed",
  "s12-pre-survey.csv"
))

pre_survey <- read_csv(here::here("data-raw", "wt01_online-science-motivation", "processed", "s12-pre-survey.csv"))
usethis::use_data(pre_survey, overwrite = TRUE)

s12_time_spent <-
  read_csv(here(
    "data-raw", "wt01_online-science-motivation",
    "raw",
    "s12-course-minutes.csv"
  ))

# s12_time_spent_ss <- dplyr::select(s12_time_spent, TimeSpent)
s12_time_spent_fin <- dplyr::select(s12_time_spent,Bb_UserPK, CourseSectionOrigID, TimeSpent)
# s12_time_spent_syn <- syn(s12_time_spent_ss)
# s12_time_spent_fin <- bind_cols(s12_time_spent_no_syn, s12_time_spent_syn)

write_csv(s12_time_spent_fin, here(
  "data-raw", "wt01_online-science-motivation",
  "processed",
  "s12-course-minutes.csv"
))

course_minutes <- read_csv(here::here("data-raw", "wt01_online-science-motivation", "processed", "s12-course-minutes.csv"))
usethis::use_data(course_minutes, overwrite = TRUE)

sci_mo_processed <- readr::read_csv(here::here("data-raw", "wt01_online-science-motivation", "processed", "sci_mo_processed.csv"))
usethis::use_data(sci_mo_processed, overwrite = TRUE)
