#' Tweets using hashtag tidytuesday
#'
#' @source Twitter and TidyTuesday <https://thomasmock.netlify.com/post/tidytuesday-a-weekly-social-data-project-in-r/>
#' @format A data frame with columns:
#' \describe{
#'  \item{status_id}{A unique identifier for a tweet}
#'  \item{lang}{Language of a tweet}
#'  \item{text}{Text of a tweet}
#' }
"tt_tweets"

#' Datasets containing students with disabilities enrollment
#'
#' @source US Department of Education <https://www2.ed.gov/programs/osepidea/618-data/state-level-data-files/index.html>
#' @format Tibble
#' \describe{
#' }
"longitudinal_data"

#' Dataset from students on their motivation and achievement in online science classes
#'
#' @source John Ranellucci and Joshua Rosenberg
#' @format Tibble
#' \describe{
#' }
"sci_mo_data"

#' Dataset on points earned out of points possible on more than 29,000 class assignments
#'
#' @source John Ranellucci and Joshua Rosenberg
#' @format Tibble
#' \describe{
#' }
"course_data"

#' Dataset on students' motivation administered before the start of those students' online science courses
# '
#' @source John Ranellucci and Joshua Rosenberg
#' @format Tibble
#' \describe{
#' }
"pre_survey"

#' Dataset on log-trace data from the number of minutes students spend on the course learning management system for online science courses
#'
#' @source John Ranellucci and Joshua Rosenberg
#' @format Tibble
#' \describe{
#' }
"course_minutes"

#' Processed dataset (for modeling with multi-level models) from students on their motivation and achievement in online science classes
#'
#' @source John Ranellucci and Joshua Rosenberg
#' @format Tibble
#' \describe{
#' }
"sci_mo_processed"

#' All packages used in Data Science in Education Using R
#' 
#' @format A character vector
all_packages <-
  c("apaTables",
    "caret",
    "dummies",
    "ggraph",
    "here",
    "janitor",
    "lme4",
    "lubridate",
    "performance",
    "readxl",
    "rtweet",
    "randomNames",
    "sjPlot",
    "tidygraph",
    "tidylog",
    "tidyverse",
    "tidytext"
  )
