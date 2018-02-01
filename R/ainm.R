#' Personal names obtained from CSO data
#'
#' Personal names with 3 occurences or more, from CSO via data.gov.ie
#'
#' @format A data frame with 5017 rows and 2 variables:
#' \describe{
#'  \item{word}{A personal name}
#'  \item{lexicon}{The source of the word (name), for compatibility with tidytext}
#'  }
#'  
#'  @source \itemize{
#'  \item \url{https://data.gov.ie/dataset/girls-names-in-ireland-with-3-or-more-occurrences-by-name-year-and-statistic}
#'  \item \url{http://www.cso.ie/px/pxeirestat/Database/Eirestat/Irish\%20Babies\%20Names/VSA12.px}
#'  \item \url{http://www.cso.ie/px/pxeirestat/Database/Eirestat/Irish\%20Babies\%20Names/VSA05.px}
#'  \item \url{https://data.gov.ie/dataset/boys-names-in-ireland-with-3-or-more-occurrences-by-name-year-and-statistic}
#'  }
#'
"ainm"