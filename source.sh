#!/bin/bash

set -e

# k8s.gcr.io/kube-apiserver:v1.14.1
# k8s.gcr.io/kube-controller-manager:v1.14.1
# k8s.gcr.io/kube-scheduler:v1.14.1
# k8s.gcr.io/kube-proxy:v1.14.1
# k8s.gcr.io/pause:3.1
# k8s.gcr.io/etcd:3.3.10
# k8s.gcr.io/coredns:1.3.1
# k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1


KUBE_VERSION=v1.14.1
KUBE_PAUSE_VERSION=3.1
KUBE_ETCD_VERSION=3.3.10
KUBE_COREDNS_VERSION=1.3.1
KUBERNETES_DASHBOARD_AMD64_VERSION=v1.10.1

GCR_URL=k8s.gcr.io

declare -A images

images=(
    [kube-apiserver]=${KUBE_VERSION}
    [kube-controller-manager]=${KUBE_VERSION}
    [kube-scheduler]=${KUBE_VERSION}
    [kube-proxy]=${KUBE_VERSION}
    [pause]=${KUBE_PAUSE_VERSION}
    [etcd]=${KUBE_ETCD_VERSION}
    [coredns]=${KUBE_COREDNS_VERSION}
    [kubernetes-dashboard-amd64]=${KUBERNETES_DASHBOARD_AMD64_VERSION})

originDir=${PWD}