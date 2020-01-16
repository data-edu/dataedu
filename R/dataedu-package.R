#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

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
NULL

#' Walkthrough 01 - Pre-Survey
#' 
#' Dataset on students' motivation administered before 
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
NULL

#' Walkthrough 01 - Course Minutes
#' 
#' Dataset on log-trace data from the number of minutes 
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
NULL

#' Walkthrough 01 - Student Motivation
#' 
#' Dataset from students on their motivation and achievement 
#' in online science classes
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
NULL

#' Walkthrough 01 - Student Motivation (Processed)
#' 
#' Processed dataset (for modeling with multi-level models) 
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
NULL

#' Walkthrough 12 - Tweet Data
#' 
#' Tweet dataset gathered from hashtag tidytuesday
#'
#'
#' @name tt_tweets
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source Twitter and TidyTuesday <https://thomasmock.netlify.com/post/tidytuesday-a-weekly-social-data-project-in-r/>
#' @keywords datasets
#' #' @examples
#' 
#' str(dataedu::tt_tweets)
#' 
NULL

#' Walkthrough 03 - Merged Ethnicity and FRPL District Data
#' 
#' Dataset with processed district data with both FRPL and 
#' ethnicity data
#'
#'
#' @name district_merged_data
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source Minneapolis Public Schools <https://mpls.k12.mn.us/>
#' @keywords datasets
#' #' @examples
#' 
#' str(dataedu::district_merged_data)
#' 
NULL

#' Walkthrough 04 - Students with Disabilities Longitudinal Data
#' 
#' Datasets containing students with disabilities longitudinal enrollment
#'
#'
#' @name longitudinal_data
#' @docType data
#' @format Dataset of class \code{tibble}.
#' @source US Department of Education <https://www2.ed.gov/programs/osepidea/618-data/state-level-data-files/index.html>
#' @keywords datasets
#' #' @examples
#' 
#' str(dataedu::longitudinal_data)
#' 
NULL

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
