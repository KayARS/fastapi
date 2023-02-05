# minikube start # omitted because email says its already running
docker build --tag api-image .
minikube image load api-image
kubectl apply -f k8s_deployment.yaml
kubectl apply -f service.yaml
kubectl expose deployment api-service --type=NodePort --port=7080 
minikube service api-service 
