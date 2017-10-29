#!/bin/bash
#author:liushuchun
#update data:2017-10-26

[ $# -lt 1 ] && echo "please input the host name" && exit -1


host_name=$1

kubectl delete ingress $host_name
kubectl delete service $host_name

echo "done!"
