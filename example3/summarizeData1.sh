#!/bin/bash

pushd `dirname $0` > /dev/null
baseDir=`pwd -P`
popd > /dev/null

inFile=${baseDir}/data/sampledata.csv

R --vanilla --slave --args ${inFile} < ${baseDir}/summarizeData.R
