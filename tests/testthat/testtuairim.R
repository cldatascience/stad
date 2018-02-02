# library(testthat)
# context("Test tuairim")
#
test_that("test tuairim lexicon", {
  if (require("dplyr", quietly = TRUE)) {
    if (require("tidyr", quietly = TRUE)) {
      if(require("tidytext", quietly = TRUE)) {
        sentences <- read.csv("../testdata/sentences.csv",stringsAsFactors = FALSE)
        
        unigrams <- unnest_tokens(sentences, word, 
                                  text, token="ngrams", n=1)
        
        sentiment_scores <- unigrams %>%
          left_join(tuairim, by="word") %>%
          group_by(id) %>%
          mutate(total_words = n())  %>%
          replace_na(replace = list(sentiment="neutral")) %>%
          count(sentiment,id,total_words) %>%
          spread(sentiment, n) %>%
          mutate(positive=ifelse(is.na(positive),0,positive)) %>%
          mutate(negative=ifelse(is.na(negative),0,negative)) %>%
          mutate(ratio = 100*((positive - negative)/total_words)) %>%
          left_join(sentences,by="id")
        
        expect_match(sentiment_scores$ratio[1],20)
        expect_match(sentiment_scores$ratio[2],25)
        expect_match(sentiment_scores$ratio[3],-20)
        expect_match(sentiment_scores$ratio[4],0)
        expect_match(sentiment_scores$ratio[5],-20)
      }
    }
  }
})