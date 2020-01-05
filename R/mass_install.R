#' Mass installation of DSIEUR packages
#' 
#' @description
#' `mass_install()` installs the packages used in DSIEUR
#' 
#' @usage
#' mass_install()
#'
#' @export mass_install

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

mass_install <- function() {
  message("This may take a while...")
  Sys.sleep(2)
  pacman::p_install(all_packages, character.only = T)
}
