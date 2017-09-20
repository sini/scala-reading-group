#!/bin/bash
ASSIGNMENTS=("example" "recfun" "funsets" "objsets" "patmat" "forcomp" "streams")

fetchSource () {
  PREFIX=$1
  TARGET=$2
  echo "Fetching sources for $TARGET"
  wget "http://spark-public.s3.amazonaws.com/progfun/assignments/${PREFIX}.zip" -O /tmp/${TARGET}_src.zip 
  unzip -n /tmp/${TARGET}_src.zip -d /tmp/${TARGET}_src
  mkdir -p ./${TARGET}
  rsync -var /tmp/${TARGET}_src/${PREFIX}/* ./${TARGET}/
  rm -rf /tmp/${TARGET}_src.zip /tmp/${TARGET}_src
}

for ((c=0; c<${#ASSIGNMENTS[@]}; c++)); do
  fetchSource ${ASSIGNMENTS[$c]} week$c
done
