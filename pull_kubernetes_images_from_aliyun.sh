#!/bin/bash

source "./source.sh"

# 注意先登录阿里云

ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/lance_dai

for image in ${images[@]}; do
  docker pull ${ALIYUN_URL}/${image}:${versionMap[$image]}
  docker tag ${ALIYUN_URL}/${image}:${versionMap[$image]} ${hubAddrMap}/${image}:${versionMap[$image]}
  docker rmi ${ALIYUN_URL}/${image}:${versionMap[$image]}
done

docker images