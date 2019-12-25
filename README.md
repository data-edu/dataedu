
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dataedu <img src='man/figures/logo.png' align="right" height="150" />

<!-- badges: start -->

<!-- badges: end -->

The goal of dataedu is to provide readers of [Data Science in Education
Using R](https://github.com/data-edu/data-science-in-education) with a
package with useful functions, data, and references from the book.

  - [Installation](#installation)
  - [Package Contents](#package-contents)
  - [Contact](#contact)

## Installation

### 1\. Install {devtools}

First, let’s install [devtools](https://github.com/r-lib/devtools), an R
package with many handy R tools. In your R console, type in:

``` r
install.packages("devtools", dependencies = TRUE)
```

If you already have {devtools} installed, you can move on to the next
step.

If you are not sure whether you have it installed, you can run this
function, which will install {devtools} if you do not already have it.

``` r
if (!require(devtools)) {
  install.packages("devtools")
  library(devtools)
}
```

### 2\. Install {dataedu}

You can install the development version of {dataedu} by running this in
your R Studio console:

``` r
devtools::install_github("data-edu/dataedu", dependencies = TRUE)
```

### 3\. Call the packages

Before you can use the package, make sure to call it using `library()`:

``` r
library(dataedu)
```

## Package Contents

We created this package to provide our readers an opportunity to jump
into R however they see fit.

1.  Mass installation of all the packages used in the book
2.  Reproducible code for the walkthroughs
3.  The dataedu theme and color palette for reuse

### Mass Installation of Packages

We strived to use packages that we use in our daily work when creating
the walkthroughs in the book. Because we covered a variety of subjects,
that means we used a lot of packages\! As described in the Foundational
Skills chapter, you can install the packages individually as they suit
your needs.

However, if you want to quickly get started and download all the
packages at once, please use `mass_install()`. This function uses the
very handy `p_install()` from the
[pacman](https://github.com/trinker/pacman) package, which facilitates
the installation and loading of packages.

``` r
dataedu::mass_install()
```

To see all the packages used in the book, run:

``` r
dataedu::all_packages
#>  [1] "apaTables"   "dummies"     "ggraph"      "here"        "janitor"    
#>  [6] "lme4"        "lubridate"   "performance" "readxl"      "rtweet"     
#> [11] "randomNames" "sjPlot"      "tidygraph"   "tidyverse"   "tidytext"
```

### Reproducible Code for Walkthroughs

### Using the dataedu theme

As in following, simply add the theme to ggplot2-based plots:

``` r
library(ggplot2)
library(dataedu)

ggplot(midwest, aes(x = area, y = popdensity, color = state)) +
  geom_point() +
  theme_dataedu()
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

## Contact

  - Please report ideas or issues on the [Issues
    page](https://github.com/data-edu/dataedu/issues). If possible, make
    your post reproducible using the
    [reprex](https://github.com/tidyverse/reprex) package.
  - Send any pull requests on the [Github
    repository](https://github.com/data-edu/dataedu).
