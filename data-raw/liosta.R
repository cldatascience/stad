#' Import raw stopwords data
#' 
library(dplyr)
library(readr)

liosta <- read_csv("data-raw/stad.csv")
devtools::use_data(liosta)

