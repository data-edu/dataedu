#' Mass installation of DSIEUR packages
#'
#' @description
#' `mass_install()` installs the packages used in DSIEUR
#'
#' @usage
#' mass_install()
#'
#' @rdname mass_install
#' @export

mass_install <- function() {
  message("This may take a while...")
  Sys.sleep(2)
  pacman::p_install(all_packages, character.only = TRUE)
}
