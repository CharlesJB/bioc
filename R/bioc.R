#' A wrapper around the biocLite function, for the lazy
#'
#' This function will source the biocLite function from bioconductor website if
#' necessary and will then launch biocLite.
#'
#' biocLite script is sourced from http://www.bioconductor.org/biocLite.R
#'
#' @param force_source \code{source} the biocLite.R script even if a biocLite
#'                     function is already available. Default: \code{FALSE}.
#' @param ... Argument to pass to the biocLite function.
#'
#' @examples
#' bioc() # To update all packages
#' bioc("metagene") # To install a Bioconductor's package
#'
#' @export
bioc <- function(force_source = FALSE, ...) {
    if (force_source == TRUE | ! exists("biocLite")) {
        source("http://www.bioconductor.org/biocLite.R")
    }
    biocLite(...)
}
