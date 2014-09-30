#!/bin/bash

pushd `dirname $0` > /dev/null
baseDir=`pwd -P`
popd > /dev/null

N=5
randseed=15

R --vanilla --slave --args ${N} ${randseed} < ${baseDir}/printNRandoms.R

