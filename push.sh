#!/bin/bash

sh ./mirrors/buildDockerfile.sh

git add --all
git commit -m "add k8s images and Dockerfile in `date`"

# 上传至阿里云code
git push -u origin master

# 上传至GitHub
git push -u github_origin master