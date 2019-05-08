#!/bin/bash

set -e

declare -A hubAddrMap
declare -A versionMap
declare -A images

loc=`pwd`
if [ ${loc##*/} = 'docker-repo' ]; then
    filename="./mirrors/source.txt"
    originDir="${PWD}/mirrors"
else
    filename="./source.txt"
    originDir=${PWD}
fi

for line in `cat ${filename}`
do
    hubAddr=${line%/*}
    imageName=${line#*/}
    imageName=${imageName%:*}
    version=${line#*/}
    version=${version#*:}
    hubAddrMap[${imageName}]=${hubAddr}
    versionMap[${imageName}]=${version}
    images[${#images[@]}]=${imageName}
done

