#!/bin/sh

minikube --vm-driver=virtualbox start
minikube addons enable metallb
eval $(minikube docker-env)
minikube dashboard &
docker build -t my_grafana ./srcs/grafana
docker build -t my_influxdb ./srcs/influxdb
docker build -t my_nginx ./srcs/nginx
docker build -t my_php ./srcs/phpmyadmin
docker build -t wp ./srcs/wordpress
docker build -t my_mysql ./srcs/mysql
docker build -t my_ftps ./srcs/ftps
kubectl apply -f ./srcs//yaml/metallb-config.yaml
kubectl apply -k ./srcs/yaml/
