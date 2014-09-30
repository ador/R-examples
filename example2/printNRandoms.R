#!/usr/bin/Rscript

readArgs <- function() {
    args <- commandArgs(trailingOnly = TRUE)
    N <- as.integer(args[1])
    seed <- as.integer(args[2])
    c(N, seed)
}

printRandomNums <- function(N, min, max, seed=1) {
    set.seed(seed)
    randomNums <- runif(N, min, max)
    print(randomNums)
}

# the "main" part 

params <- readArgs()
howmany <- params[1]
seed <- params[2]
printRandomNums(howmany, 0, 100, seed)
