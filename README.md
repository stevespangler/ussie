
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/stevespangler/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/stevespangler/ussie/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/stevespangler/ussie/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/stevespangler/ussie/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The goal of ussie is to make working with European league football data
easier through cleaning and manipulation functions that tidy the data
set from the **`engsoccerdata`** package (Curley 2016).

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stevespangler/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)
## produce cleaned, standardized league data set
england_data <- uss_make_matches(engsoccerdata::england, "England")
```
