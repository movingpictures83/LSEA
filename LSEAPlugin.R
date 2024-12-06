
knitr::opts_chunk$set(echo = TRUE, message = FALSE, warning = FALSE, fig.width = 8)
library(lipidr)
library(ggplot2)


input <- function(inputfile) {
   de_results <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

enrich_results = lsea(de_results, rank.by = "logFC")

saveRDS(enrich_results, outputfile)
}
