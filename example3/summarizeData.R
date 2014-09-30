#!/usr/bin/Rscript

readArgs <- function() {
    args <- commandArgs(trailingOnly = TRUE)
    inFileName <- args[1]
    inFileName
}

# the "main" part 

inFileName <- readArgs()

# reading the data into memory: into a "data frame" object
dataFrame1 <- read.table(inFileName, header=TRUE)

# try this as well (without "header"): 
# dataFrame1 <- read.table(inFileName)

# or specify separator if needed
# dataFrame1 <- read.table(inFileName, sep="\t", header=TRUE)

# some simple stats
summary(dataFrame1)
