#!/bin/bash
#author:liushuchun
#update data:2017-10-26
[ $# -lt 2 ] && echo "please input the pod name & host name" && exit -1

pod_name=$1
host_name=$2

if [ "$#" -ne "3" ]; then
    service_name=$2
else
    service_name=$3
fi

cp ./tmpl/ingress.tmpl ./ingress.yml

cp ./tmpl/service.tmpl ./service.yml


sed -i "" "s/HOST_NAME/${host_name}/g" *.yml 

sed -i "" "s/SERVICE_NAME/${service_name}/g" *.yml 

sed -i "" "s/POD_NAME/${pod_name}/g" *.yml 

echo "add label to the pod"

kubectl label pods $pod_name jupyter=$host_name

echo "create service"
kubectl create -f service.yml

echo "create ingress"
kubectl create -f ingress.yml

echo "done!"
echo "..."
#rm -rf ./tmpl/tmp/

rm -rf *.yml 


