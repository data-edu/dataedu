#' Mass installation of DSIEUR packages
#' 
#' \code{mass_installation} installs all the packages used in the book
#' 
library(pacman)

all_packages <-
  c("apaTables",
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
    "tidyverse",
    "tidytext"
    )

mass_install <- function() {
  message("This may take a while...")
  Sys.sleep(2)
  pacman::p_install(all_packages, character.only = T)
}
