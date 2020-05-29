#' ggplot2 theme for Data Science in Education Using R
#'
#' @description
#' Apply the 'Data Science in Education Using R' background and font to ggplot2.
#'
#' @usage
#' theme_dataedu()
#'
#' @details
#' The dataedu theme uses the font Gills Sans Mt.
#' 
#' @rdname theme_dataedu
#' @export
theme_dataedu <- function() {
  ggplot2::theme_minimal(base_size = 12,
                         base_family = "GillSansMT")
}
