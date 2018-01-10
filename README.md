# stad

[![Build Status](https://travis-ci.org/cldatascience/stad.svg?branch=master)](https://travis-ci.org/cldatascience/stad) 

## About

This package contains some handy data sources for text mining with Irish-language data (Gaeilge).

Installation
------------
You can install `stad` from github using [devtools](https://cran.r-project.org/package=devtools):

``` r
library(devtools)
install_github("cldatascience/stad")
```

liosta
------
A list of stopwords for Irish (Gaeilge), suitable for use in tidy text packages such as [tidytext](https://cran.r-project.org/package=tidytext) or [tidygramr](https://github.com/cldatascience/tidygramr)

The initial list of words is based on commonly occuring words in Irish such as pronouns, prepositions, and various forms of the verb bí.

ainm
------
Personal names in Ireland with three or more occurrences. This Central Statistics Office (CSO) data was obtained from [data.gov.ie](https://data.gov.ie/data), available under [Creative Commons Attribution 4.0](https://creativecommons.org/licenses/by/4.0/).

* [Boys names](https://data.gov.ie/dataset/boys-names-in-ireland-with-3-or-more-occurrences-by-name-year-and-statistic)
* [Girls names](https://data.gov.ie/dataset/girls-names-in-ireland-with-3-or-more-occurrences-by-name-year-and-statistic)