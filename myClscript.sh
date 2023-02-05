# minikube start #in case your minikube isnt running
docker build --tag api-image .
minikube image load api-image
kubectl apply -f k8s_deployment.yaml
kubectl apply -f service.yaml
minikube service api-service 
