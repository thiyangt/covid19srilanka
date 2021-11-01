# 20Oct2021
# 1Nov2021

##----packages
library(tidyverse)
library(here)
library(usethis)

##----load-covid cases
covid.cases <- read_csv(here("data-raw", "Covid.cases.csv"))
head(covid.cases)
#.... 1 November 2021
sep.covid.cases <- read_csv(here("data-raw", "Sep.Covid.cases.csv"))
head(sep.covid.cases)
sep.covid.cases <- tibble(Date=sep.covid.cases$Date, Type=sep.covid.cases$Type, Count=sep.covid.cases$Count)
head(sep.covid.cases)
## ---- Combine all files
covid.cases <- union(covid.cases, sep.covid.cases)
head(covid.cases)
tail(covid.cases)

##----load-covid districts
district.wise.cases <- read_csv(here("data-raw", "Covid.district.csv"))

##----vaccination details
vaccination <- read_csv(here("data-raw", "Vaccine1.data.csv"))
head(vaccination)

##---- data-raw
usethis::use_data(covid.cases,
                  district.wise.cases,
                  vaccination,
                  overwrite = TRUE)
