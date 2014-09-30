#!/usr/bin/Rscript


# run this if you don't have the package already - first run might take a while
if (!require("plyr")) {
  localLibPath <- Sys.getenv("R_LIBS")
  print(c("Local lib path to install to is ", localLibPath))
  install.packages("plyr", repos="http://cran.rstudio.com/", lib=localLibPath)
  library(plyr)
}


readArgs <- function() {
    args <- commandArgs(trailingOnly = TRUE)
    inFileName <- args[1]
    inFileName
}

# the "main" part 

inFileName <- readArgs()

# reading the data into memory: into a "data frame" object
dataFrame1 <- read.table(inFileName, header=TRUE)

ddply(dataFrame1, c("col1","col3"), function(df){mean(df$col2 + df$col3)})

# TODO plot
