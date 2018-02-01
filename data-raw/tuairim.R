#' Import raw sentiment data
#' 
library(dplyr)
library(readr)

# Sources of untranslated Bing Liu lexicon,
# tuairim.csv contains the translated version that
# was subject to a join with Irish-language text
#
# https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html
# https://github.com/juliasilge/tidytext/tree/master/data-raw

tuairim <- read_csv("data-raw/tuairim.csv")
devtools::use_data(tuairim)
