#!/bin/bash

pushd `dirname $0` > /dev/null
baseDir=`pwd -P`
popd > /dev/null

inFile=${baseDir}/data/sampledata2.csv

# don't forget to create your own "library", at first set a path for it
: ${R_LIBS:=~/R_Libs}
mkdir -p ${R_LIBS}

R --vanilla --slave --args ${inFile} < ${baseDir}/smarterSummarizeAndPlotData.R
