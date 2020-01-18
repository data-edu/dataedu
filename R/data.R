#' Walkthrough 01 - Course Data
#' 
#' Dataset on points earned out of points possible 
#' on more than 29,000 class assignments
#'
#'
#' @name course_data
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source John Ranellucci and Joshua Rosenberg
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::course_data)
#' 
"course_data"

#' Walkthrough 01 - Pre-Survey
#' 
#' Walkthrough 01 - Dataset on students' motivation administered before 
#' the start of those students' online science courses
#'
#'
#' @name pre_survey
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source John Ranellucci and Joshua Rosenberg
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::pre_survey)
#' 
"pre_survey"

#' Walkthrough 01 - Course Minutes
#' 
#' Walkthrough 01 - Dataset on log-trace data from the number of minutes 
#' students spend on the course learning management system 
#' for online science courses
#' 
#' 
#' @name course_minutes
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source John Ranellucci and Joshua Rosenberg
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::course_minutes)
#' 
"course_minutes"

#' Walkthrough 01 - Student Motivation
#' 
#' Walkthrough 01 - Dataset from students on their motivation and 
#' achievement in online science classes
#' 
#' 
#' @name sci_mo_data
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source John Ranellucci and Joshua Rosenberg
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::sci_mo_data)
#' 
"sci_mo_data"

#' Walkthrough 01 - Student Motivation (Processed)
#' 
#' Walkthrough 01 - Processed dataset (for modeling with multi-level models) 
#' from students on their motivation and achievement in 
#' online science classes
#' 
#' 
#' @name sci_mo_processed
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source John Ranellucci and Joshua Rosenberg
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::sci_mo_processed)
#' 
"sci_mo_processed"

#' Walkthrough 12 - Tweet Data
#' 
#' Walkthrough 12 - Tweet dataset gathered from hashtag tidytuesday
#'
#'
#' @name tt_tweets
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source Twitter and TidyTuesday <https://thomasmock.netlify.com/post/tidytuesday-a-weekly-social-data-project-in-r/>
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::tt_tweets)
#' 
"tt_tweets"

#' Walkthrough 03 - Merged Ethnicity and FRPL District Data
#' 
#' Walkthrough 03 - Dataset with processed district data with 
#' both FRPL and ethnicity data
#'
#'
#' @name district_merged_data
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source Minneapolis Public Schools <https://mpls.k12.mn.us/>
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::district_merged_data)
#' 
"district_merged_data"

#' Walkthrough 04 - Students with Disabilities Longitudinal Data
#' 
#' Walkthrough 04 - Datasets containing students with disabilities 
#' longitudinal enrollment
#'
#'
#' @name longitudinal_data
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source US Department of Education <https://www2.ed.gov/programs/osepidea/618-data/state-level-data-files/index.html>
#' @keywords datasets
#' @examples
#' 
#' str(dataedu::longitudinal_data)
#' 
"longitudinal_data"

#' All packages used in Data Science in Education Using R
#' 
#' @name all_packages
#' @format A character vector
#' @export all_packages
#' 
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

