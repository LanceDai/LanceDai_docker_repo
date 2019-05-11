#!/bin/bash

./mirrors/buildDockerfile.sh

git add --all
git commit -m "update in `date`"

# 上传至阿里云code
git push -u origin master

# 上传至GitHub
git push -u github_origin master