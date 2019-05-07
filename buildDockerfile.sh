#!/bin/bash

source "./source.sh"

for image in ${!images[*]}; do
    cd ${originDir}
    if [ ! -d "./${image}/" ];then
        mkdir ${image}
    else
        echo "${image}文件夹已经存在"
    fi
    cd ${image}
    rm -rf ./${images[$image]}
    mkdir ${images[$image]}
    cd ${images[$image]}
    rm -rf ./Dockerfile
    echo "FROM ${GCR_URL}/${image}:${images[$image]}" >> Dockerfile 
done

git add --all
git commit -m "add k8s images and Dockerfile in `date`"

# 上传至阿里云code
git push -u origin master

# 上传至GitHub
git push -u github_origin master