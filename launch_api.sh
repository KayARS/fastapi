minikube delete
minikube start
# allows docker to access local images
eval $(minikube -p minikube docker-env)
docker build --tag api-image .
kubectl apply -f k8s_deployment.yaml
kubectl expose deployment api-deployment --type=NodePort --port=7080
minikube service api-deployment 
