#!/usr/bin/env bash

set -e  # exit immediately on error
set -u  # fail on undeclared variables

##
## Install Helm ..
##

wget -c  https://get.helm.sh/helm-v2.16.9-linux-amd64.tar.gz
tar zxf helm-v2.16.9-linux-amd64.tar.gz
mv linux*/helm linux*/tiller /usr/local/bin
helm init --upgrade -i registry.cn-hangzhou.aliyuncs.com/google_containers/tiller:v2.16.9 --stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts
