# biocLite wrapper, for the lazy

The goal of this package is to avoid having to source the bioLite script from
Bioconductor's web site every time I want to install a Bioconductor package or
when I want to update all my packages.

## Installation

```
require(devtools)
devtools::install_github("CharlesJB/bioc")
```

## Usage

```
library(bioc)
bioc() # To update all packages
bioc("metagene") # To install a Bioconductor package
```
