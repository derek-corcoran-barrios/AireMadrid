library(tidyverse)
library(lubridate)

stations <- read_csv("stations.csv") %>% rename(station = id)

madrid_2017 <- read_csv("csvs_per_year/madrid_2017.csv") %>% select(CO, date, station) %>% filter(!is.na(CO)) %>% mutate(Mes = month(date)) %>% full_join(stations) %>% select(-station, - address)
