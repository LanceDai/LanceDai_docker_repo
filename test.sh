#!/bin/bash


source './source.sh'
originDir=${PWD}

for image in ${!images[*]}; do
    echo "cd ${originDir}"
    if [ ! -d "./${image}/" ];then
        echo "mkdir ${image}"
    else
        echo "${image}文件夹已经存在"
    fi
    echo "cd ${image}"
    echo "rm -rf ./${images[$image]}"
    echo "mkdir ${images[$image]}"
    echo "cd ${images[$image]}"
    echo "rm -rf ./Dockerfile"
    echo "echo "FROM ${GCR_URL}/${image}:${images[$image]}" >> Dockerfile"
done

# git add --all
# git commit -m "add k8s images and Dockerfile in `date`"
# git push -u origin master
