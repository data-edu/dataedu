#' A [ggplot] theme for Data Science in Education
#' 
#' @md
#' @section About the font:
#' The dataedu theme uses extrafont to download Arial Rounded Bold.
#' To download extrafont, the extrafont database is required.
#' More information can be found on the extrafont help page.
#' 
#' @export

library(extrafont)

if(.Platform$OS.type == "windows") {
  font_import(pattern = "ARLRDBD")
  loadfonts(device = "win", quiet = TRUE)
} else {
  font_import(pattern = "Arial Rounded Bold")
  loadfonts()
}

#' Function to apply background and font to ggplot
#' 
theme_dataedu <- function () {
  theme_minimal(base_size = 12,
                base_family = "Arial Rounded MT Bold") %+replace%
    theme(
      legend.background = element_rect(fill = "transparent", colour = NA),
      legend.key = element_rect(fill = "transparent", colour = NA)
    )
}