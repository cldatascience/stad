#' Download CSO data & clean
#' 
library(dplyr)
library(readr)
library(pxR)

#' See data.gov.ie for details & Creative Commons Attribution 4.0 
#' https://data.gov.ie/dataset/girls-names-in-ireland-with-3-or-more-occurrences-by-name-year-and-statistic
female_names_vsa12 <- "data-raw/VSA12.px"
if(!file.exists(female_names_vsa12)){
  download.file("http://www.cso.ie/px/pxeirestat/Database/Eirestat/Irish%20Babies%20Names/VSA12.px", 
                female_names_vsa12, method="curl", quiet = FALSE, 
                mode = "w", cacheOK = TRUE,
                extra = getOption("download.file.extra"))
}

female_names <- as.data.frame(read.px(female_names_vsa12))

#' See data.gov.ie for details & Creative Commons Attribution 4.0
#' https://data.gov.ie/dataset/boys-names-in-ireland-with-3-or-more-occurrences-by-name-year-and-statistic
male_names_vsa05 <- "data-raw/VSA05.px"
if(!file.exists(male_names_vsa05)){
  download.file("http://www.cso.ie/px/pxeirestat/Database/Eirestat/Irish%20Babies%20Names/VSA05.px", 
                male_names_vsa05, method="curl", quiet = FALSE, 
                mode = "w", cacheOK = TRUE,
                extra = getOption("download.file.extra"))
}

male_names <- as.data.frame(read.px(male_names_vsa05))

ainm <- rbind(female_names, male_names)
rm(female_names,male_names)

ainm <- ainm %>% 
  rename(word=Name) %>%
  group_by(word) %>% 
  count() %>%
  ungroup() %>%
  select(word) %>%
  mutate(lexicon="CSO") %>%
  arrange()

write_csv(ainm, "data-raw/ainm.csv")
devtools::use_data(ainm)