#' Font for Data Science in Education
#'
#' Font for Data Science in Education
#'
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto
#' @importFrom proto proto

cabinproto <- proto::proto(expr={
  get_path <- function() {
    font_folder <- "fonts"
    system.file(font_folder, package = "dataedu")
  }
  list_fonts <- function() {
    list.files(get_path())
  }
  load_font <- function(., font) {
    font_path <- get_path()

    # Check if font path exists (may be empty during development)
    if (font_path == "" || !dir.exists(font_path)) {
      warning("Font path not found. The dataedu theme may not work correctly.",
              call. = FALSE)
      return(invisible(NULL))
    }

    wd <- getwd()
    on.exit(setwd(wd))  # Ensure we always return to original directory

    setwd(font_path)
    if (!file.exists(font)) {
      warning("Font file '", font, "' doesn't exist.", call. = FALSE)
      return(invisible(NULL))
    }

    sysfonts::font_add(family = sub("\\..*", "", font),
                       regular = font)
    showtext::showtext_auto()
  }
})

#' Load Cabin Font
#'
#'
#' @title load.cabin
#' @param font Cabin
#' @return NULL
#' @export
load.cabin <- function(font = "Cabin.ttf") {
  cabinproto$load_font(font = font)
}
