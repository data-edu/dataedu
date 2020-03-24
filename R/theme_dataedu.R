#' A ggplot2 theme for Data Science in Education Using R
#'
#' @description
#' Apply the 'Data Science in Education Using R' background and font to ggplot2.
#'
#' @usage
#' theme_dataedu()
#'
#' @details
#' The dataedu theme uses the [extrafont](https://github.com/wch/extrafont) package to download Gill Sans MT.
#'
#' To use [extrafont](https://github.com/wch/extrafont), the extrafont database is required. More information can be found on the [extrafont](https://github.com/wch/extrafont) help page.
#'
#' @rdname theme_dataedu
#' @export
theme_dataedu <- function() {
  ggplot2::theme_minimal(
    base_size = 12,
    base_family = "Gill Sans MT"
  )
}
