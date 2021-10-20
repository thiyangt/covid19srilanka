
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid19srilanka <a href='https://github.com/thiyangt/covid19srilanka'><img src='man/figures/hex.png' align="right"  /></a>

<!-- badges: start -->
<!-- badges: end -->

The covid19srilanka package provides a tidy format dataset of the 2019
Novel Coronavirus COVID-19 (2019-nCoV) epidemic in Sri Lanka

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thiyangt/covid19srilanka")
```

## Example

``` r
library(coronavirus)
```

## Covid-19 Cases in Sri Lanka

``` r
data("covid.cases")
head(covid.cases)
#>         Date      Type Count
#> 1 2020-03-29 Confirmed   115
#> 2 2020-03-29 Recovered    10
#> 3 2020-03-29    Deaths     1
#> 4 2020-03-29    Active   104
#> 5 2020-03-30 Confirmed   120
#> 6 2020-03-30 Recovered    11
```

## District-wise Covid-19 Cases in Sri Lanka

``` r
data("district.wise.cases")
head(district.wise.cases)
#>         Date   District Count
#> 1 2021-08-01    Colombo 71267
#> 2 2021-08-01    Gampaha 56085
#> 3 2021-08-01   Kalutara 33300
#> 4 2021-08-01      Kandy 14576
#> 5 2021-08-01 Kurunagala 15327
#> 6 2021-08-01      Galle 14841
summary(district.wise.cases)
#>       Date              District             Count      
#>  Min.   :2021-08-01   Length:832         Min.   : 1116  
#>  1st Qu.:2021-08-08   Class :character   1st Qu.: 3428  
#>  Median :2021-08-16   Mode  :character   Median : 6735  
#>  Mean   :2021-08-16                      Mean   :13445  
#>  3rd Qu.:2021-08-24                      3rd Qu.:13057  
#>  Max.   :2021-09-01                      Max.   :99240
```

## Vaccination Details in Sri Lanka

``` r
data("vaccination")
head(vaccination)
#>         Date            Vaccine first dose Second dose
#> 1 2021-04-29 Covishield Vaccine     925242        3445
#> 2 2021-04-29  Sinopharm Vaccine       2469        2435
#> 3 2021-04-30 Covishield Vaccine     925242       22919
#> 4 2021-04-30  Sinopharm Vaccine       2865        2435
#> 5 2021-05-01 Covishield Vaccine     925242       60757
#> 6 2021-05-01  Sinopharm Vaccine       2865        2435
```
