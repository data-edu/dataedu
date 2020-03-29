#' Color palette for Data Science in Education
#'
#' Color palette for Data Science in Education
#'
#'
dataedu_palette <- c(
  `darkblue`   = "#003f5c",
  `purple`  = "#58508d",
  `pink`      = "#bc5090",
  `coral` = "#ff6361",
  `yellow`     = "#ffbc49"
)

#' Extract dataedu colors as hex codes
#'
#' @name dataedu_colors
#' @param ... Character names of dataedu_palette
#'
#' @export
dataedu_colors <- function(...) {
  cols <- c(...)

  if (is.null(cols)) {
    return(dataedu_palette)
  }

  dataedu_palette[cols]
}

dataedu_colors()

dataedu_palettes <- list(
  `short` = dataedu_colors("darkblue", "yellow"),
  `main` = dataedu_colors("darkblue", "purple", "pink", "coral", "yellow")
)

#' Interpolate a dataedu color palette
#'
#' @name dataedu_pal
#'
#' @param palette Character name of palette in dataedu_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
dataedu_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- dataedu_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}

#' Color scale constructor for dataedu colors
#'
#' @name scale_color_dataedu
#'
#'
#' @param palette Character name of palette in dataedu_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_color_dataedu <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- dataedu_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("dataedu_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for dataedu colors
#'
#' @name scale_fill_dataedu
#'
#'
#' @param palette Character name of palette in dataedu_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_fill_dataedu <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- dataedu_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("dataedu_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
