% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioc.R
\name{bioc}
\alias{bioc}
\title{A wrapper around the biocLite function, for the lazy}
\usage{
bioc(pkg = NULL, force_source = FALSE, ask = FALSE)
}
\arguments{
\item{pkg}{The name of the package to install. If \code{NULL}, the function
will run \code{biocLite()} which will update all packages.}

\item{force_source}{\code{source} the biocLite.R script even if a biocLite
function is already available. Default: \code{FALSE}.}

\item{ask}{Ask before updating a package. Default. \code{FALSE}}
}
\description{
This function will source the biocLite function from bioconductor website if
necessary and will then launch biocLite.
}
\details{
biocLite script is sourced from http://www.bioconductor.org/biocLite.R
}
\examples{
bioc() # To update all packages
bioc("metagene") # To install a Bioconductor's package

}

