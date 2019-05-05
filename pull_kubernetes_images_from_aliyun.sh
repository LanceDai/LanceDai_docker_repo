#!/bin/bash

set -e

# Check version in https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/
# Search "Running kubeadm without an internet connection"
# For running kubeadm without an internet connection you have to pre-pull the required master images for the version of choice:
KUBE_VERSION=v1.14.1
KUBE_PAUSE_VERSION=3.1
KUBE_ETCD_VERSION=3.3.10
KUBE_COREDNS_VERSION=1.3.1

GCR_URL=k8s.gcr.io
ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/lance_dai

images=(
  kube-apiserver:${KUBE_VERSION}
  kube-controller-manager:${KUBE_VERSION}
  kube-scheduler:${KUBE_VERSION}
  kube-proxy:${KUBE_VERSION}
  pause:${KUBE_PAUSE_VERSION}
  etcd:${KUBE_ETCD_VERSION}
  coredns:${KUBE_COREDNS_VERSION})

for image in ${images[@]}; do
  echo "docker pull ${ALIYUN_URL}/${image}"
  echo "docker tag ${ALIYUN_URL}/${image} ${GCR_URL}/${image}"
  echo "docker rmi ${ALIYUN_URL}/${image}"
done

docker images