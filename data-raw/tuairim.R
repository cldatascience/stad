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

tuairim <- read_csv("data-raw/tuairim.csv",
                    col_types=cols(word=col_character(), 
                                   sentiment=col_factor(levels=c("positive","negative"))))
devtools::use_data(tuairim, overwrite = TRUE)
