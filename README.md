# docker-repo

## 这是我个人的docker仓库

### mirrors:

#### 	description:

​		利用阿里云的镜像构建功能,构建在国内无法下载的image

​		当前支持镜像:

   - **k8s.gcr.io/kube-apiserver:v1.14.1**

   - **k8s.gcr.io/kube-controller-manager:v1.14.1**

   - **k8s.gcr.io/kube-scheduler:v1.14.1**

   - **k8s.gcr.io/kube-proxy:v1.14.1**

   - **k8s.gcr.io/pause:3.1**

   - **k8s.gcr.io/etcd:3.3.10**

   - **k8s.gcr.io/coredns:1.3.1**

   - **k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1** 

     保存在source.txt文件中

     只要往source.txt写入所需镜像全限定名,即可自动生成相关目录和Dockerfile

     步骤如下:

     ```bash
     ./buildDickerfile.sh
     ```

     会自动构建相应的Dockerfile

### personal:

#### description:

​	保存的是自己的个人镜像

### test:

#### description:

​	测试镜像