## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)

library(tidyverse)
library(sf)
library(here)

## LKA_ADM0
lka_adm0 <- read_sf("data-raw/LKA_ADM0/LKA_ADM0.shp") 
st_crs(lka_adm0)
save(lka_adm0, file="inst/extdata/lka_adm0.rda", compress='xz')
load("C:/SriLanka/inst/extdata/lka_adm0.rda")
ggplot(lka_adm0) + 
  geom_sf()

## LKA_ADM1
lka_adm1 <- read_sf("data-raw/LKA_ADM1/LKA_ADM1.shp") 
st_crs(lka_adm1)
save(lka_adm1, file="inst/extdata/lka_adm1.rda", compress='xz')
load("C:/SriLanka/inst/extdata/lka_adm1.rda")
ggplot(lka_adm1) + 
  geom_sf()

## LKA_ADM2
lka_adm2 <- read_sf("data-raw/LKA_ADM2/LKA_ADM2.shp") 
st_crs(lka_adm2)
save(lka_adm2, file="inst/extdata/lka_adm2.rda", compress='xz')
load("C:/SriLanka/inst/extdata/lka_adm2.rda")
ggplot(lka_adm2) + 
  geom_sf()


## LKA_ADM3
lka_adm3 <- read_sf("data-raw/LKA_ADM3/LKA_ADM3.shp") 
st_crs(lka_adm3)
save(lka_adm3, file="inst/extdata/lka_adm3.rda", compress='xz')
load("C:/SriLanka/inst/extdata/lka_adm3.rda")
ggplot(lka_adm3) + 
  geom_sf()

## LKA_ADM4
lka_adm4 <- read_sf("data-raw/LKA_ADM4/LKA_ADM4.shp") 
st_crs(lka_adm4)
save(lka_adm4, file="inst/extdata/lka_adm4.rda", compress='xz')
load("C:/SriLanka/inst/extdata/lka_adm4.rda")
ggplot(lka_adm4) + 
  geom_sf()


### Historical locations
library(readxl)
historical.paintings.locations <- read_excel("data-raw/historical_paintings.xlsx")
View(historical_paintings)


usethis::use_data(historical.paintings.locations, overwrite = TRUE)
