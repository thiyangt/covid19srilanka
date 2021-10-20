# 20Oct2021

##----packages
library(tidyverse)
library(here)
library(usethis)

##----load-covid cases
covid.cases <- read_csv(here("data-raw", "Covid.cases.csv"))
head(covid.cases)

##----load-covid districts
district.wise.cases <- read_csv(here("data-raw", "Covid.district.csv"))

##----vaccination details
vaccination <- read_csv(here("data-raw", "Vaccine1.data.csv"))
head(vaccination)

##---- data-raw
usethis::use_data(covid.cases, district.wise.cases, vaccination)
