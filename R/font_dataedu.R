#' Font for Data Science in Education
#'
#' Font for Data Science in Education
#'
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto
#' @importFrom proto proto

gillproto <- proto::proto(expr={
  get_path <- function() {
    font_folder <- "fonts"
    system.file(font_folder, package = "dataedu")
  }
  list_fonts <- function() {
    list.files(get_path())
  }
  load_font <- function(., font) {
    wd <- getwd()
    font_path <- get_path()
    setwd(font_path)
    if (!file.exists(font)) {
      setwd(wd)
      stop("font doesn't exist...")
    }
    sysfonts::font_add(sub("\\..*", "", font), font)
    showtext::showtext_auto()
    setwd(wd)
  }
})

#' Load Gill Sans MT Font
#'
#'
#' @title load.gillsansmt
#' @param font Gill Sans MT
#' @return NULL
#' @export
load.gillsansmt <- function(font = "GillSansMT.ttf") {
  gillproto$load_font(font = font)
}
