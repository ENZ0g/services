minikube start --vm-driver=virtualbox                   # you must already have minikube installed -> brew install minikube
sleep 3
eval $(minikube -p minikube docker-env)                 # set enviroment to use docker from minikube

minikube addons enable metallb                          # enable built-in metallb load balancer
kubectl apply -f ./srcs/metallb_configmap.yaml          # apply metallb configurations

kubectl apply -f ./srcs/persistant_volume.yaml
kubectl apply -f ./srcs/secrets.yaml

docker build -t alpine_nginx ./srcs/nginx/              # build nginx image
sleep 2
kubectl apply -f ./srcs/nginx/nginx_deployment.yaml     # apply nginx configuration

docker build -t alpine_mariadb ./srcs/msql/             # build mariadb image
sleep 2
kubectl apply -f ./srcs/msql/msql_deployment.yaml       # apply msql configuration

docker build -t alpine_wordpress ./srcs/wordpress/      # build wordpress image
sleep 2
kubectl apply -f ./srcs/wordpress/wordpress_deployment.yaml

docker build -t alpine_phpmyadmin ./srcs/phpmyadmin/
sleep 2
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin_deployment.yaml

docker build -t alpine_ftp ./srcs/ftp/
sleep 2
kubectl apply -f ./srcs/ftp/ftp_deployment.yaml

docker build -t alpine_telegraf ./srcs/telegraf/
sleep 2
kubectl apply -f ./srcs/telegraf/telegraf_deployment.yaml

docker build -t alpine_influxdb ./srcs/influx/
sleep 2
kubectl apply -f ./srcs/influx/influxdb_deployment.yaml

docker build -t alpine_grafana ./srcs/grafana/
sleep 2
kubectl apply -f ./srcs/grafana/grafana_deployment.yaml