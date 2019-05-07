#!/bin/bash

source "./source.sh"

# 注意先登录阿里云

ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/lance_dai

for image in ${!images[*]}; do
  docker pull ${ALIYUN_URL}/${image}:${images[$image]}
  docker tag ${ALIYUN_URL}/${image}:${images[$image]} ${GCR_URL}/${image}:${images[$image]}
  docker rmi ${ALIYUN_URL}/${image}:${images[$image]}
done

docker images