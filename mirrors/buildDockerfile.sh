#!/bin/bash

source "./source.sh"

for image in ${images[@]}; do
    cd ${originDir}
    if [ ! -d "./${image}/" ];then
        mkdir ${image}
    else
        echo "${image}文件夹已经存在"
    fi
    cd ${image}
    rm -rf ./${versionMap[$image]}
    mkdir ${versionMap[$image]}
    cd ${versionMap[$image]}
    rm -rf ./Dockerfile
    echo "FROM ${hubAddrMap[${image}]}/${image}:${versionMap[${image}]}" >> Dockerfile 
done