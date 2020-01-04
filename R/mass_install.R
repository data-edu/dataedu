#' Mass installation of DSIEUR packages
#' 
#' @name mass_install
#' @aliases mass_install
#' @export mass_install
#' 
#' @description
#' `mass_install()` installs the packages used in DSIEUR
#' @usage
#' mass_install()
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
