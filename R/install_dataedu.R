#' Mass installation of DSIEUR packages
#'
#' @description
#' `install_dataedu()` installs the packages used in DSIEUR
#'
#' @usage
#' install_dataedu()
#'
#' @rdname install_dataedu
#' @export

install_dataedu <- function() {
  message("This may take a while...")
  Sys.sleep(2)
  install.packages(dataedu_packages)
}

#' Mass installation of DSIEUR bookdown packages needed to render the book
#'
#' @description
#' `install_bookdown_dependencies()` installs the packages required as 
#' dependencies used to render the bookdown book 
#' (at https://github.com/data-edu/data-science-in-education)
#'
#' @usage
#' install_bookdown_dependencies()
#'
#' @rdname install_bookdown_dependencies
#' @export

install_bookdown_dependencies <- function() {
  Sys.sleep(2)
  install.packages(dataedu_bookdown_dependencies)
}
