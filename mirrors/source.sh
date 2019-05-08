#!/bin/bash

set -e

declare -A hubAddrMap
declare -A versionMap
declare -A images

for line in `cat './source.txt'`
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

originDir=${PWD}