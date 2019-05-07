#!/bin/bash

source "./source.sh"

for image in ${images[@]}; do
    echo "cd ${originDir}"
    if [ ! -d "./${image}/" ];then
        echo "mkdir ${image}"
    else
        echo "echo '${image}文件夹已经存在'"
    fi
    echo "cd ${image}"
    echo "rm -rf ./${versionMap[$image]}"
    echo "mkdir ${versionMap[$image]}"
    echo "cd ${versionMap[$image]}"
    echo "rm -rf ./Dockerfile"
    echo "echo "FROM ${hubAddrMap[${image}]}/${image}:${versionMap[${image}]}" >> Dockerfile"
done

# git add --all
# git commit -m "add k8s images and Dockerfile in `date`"

# # 上传至阿里云code
# git push -u origin master

# # 上传至GitHub
# git push -u github_origin master