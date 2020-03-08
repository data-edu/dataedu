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
