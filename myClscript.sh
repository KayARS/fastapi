# minikube start #in case your minikube isnt running
minikube addons enable ingress
docker build --tag api-image .
minikube image load api-image
kubectl apply -f ./k8s_config/k8s_deployment.yaml
kubectl apply -f ./k8s_config/service.yaml
kubectl apply -f ./k8s_config/ingress_http.yaml
#minikube service api-service 
kubectl port-forward --address 0.0.0.0 deployment/ingress-nginx-controller 7080:80 --namespace ingress-nginx
#minikube image load api-image