#!/bin/bash

pushd `dirname $0` > /dev/null
baseDir=`pwd -P`
popd > /dev/null

R --vanilla --slave < ${baseDir}/print10Randoms.R
