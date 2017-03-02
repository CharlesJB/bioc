#' A wrapper around the biocLite function, for the lazy
#'
#' This function will source the biocLite function from bioconductor website if
#' necessary and will then launch biocLite.
#'
#' biocLite script is sourced from http://www.bioconductor.org/biocLite.R
#'
#' @param pkg The name of the package to install. If \code{NULL}, the function
#'            will run \code{biocLite()} which will update all packages.
#' @param force_source \code{source} the biocLite.R script even if a biocLite
#'                     function is already available. Default: \code{FALSE}.
#' @param ask Ask before updating a package. Default. \code{FALSE}
#'
#' @examples
#' bioc() # To update all packages
#' bioc("metagene") # To install a Bioconductor's package
#'
#' @export
bioc <- function(pkg = NULL, force_source = FALSE, ask = FALSE) {
    if (force_source == TRUE | ! exists("biocLite")) {
        source("https://www.bioconductor.org/biocLite.R")
    }
    biocLite(pkg, ask = ask)
}
