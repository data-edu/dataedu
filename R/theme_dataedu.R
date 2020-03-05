#' A ggplot2 theme for Data Science in Education Using R
#'
#' @description
#' Apply the 'Data Science in Education Using R' background and font to ggplot2.
#'
#' @usage
#' theme_dataedu()
#'
#' @details
#' The dataedu theme uses the [extrafont](https://github.com/wch/extrafont) package to download Arial Rounded Bold.
#'
#' To use [extrafont](https://github.com/wch/extrafont), the extrafont database is required. More information can be found on the [extrafont](https://github.com/wch/extrafont) help page.
#'
#' @rdname theme_dataedu
#' @export
theme_dataedu <- function() {
  if (.Platform$OS.type == "windows") {
    extrafont::font_import(pattern = "GIL", prompt = FALSE)
    extrafont::loadfonts(device = "win", quiet = TRUE)
  } else {
    extrafont::font_import(pattern = "Gill Sans MT", prompt = FALSE)
    extrafont::loadfonts(quiet = TRUE)
  }
  ggplot2::theme_minimal(
    base_size = 12,
    base_family = "Gill Sans MT"
  ) %+replace%
    ggplot2::theme(
      legend.background = ggplot2::element_rect(fill = "transparent", colour = NA),
      legend.key = ggplot2::element_rect(fill = "transparent", colour = NA)
    )
}
