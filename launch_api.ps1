minikube delete
minikube start #--extra-config=apiserver.service-node-port-range=30007-30008
# allows docker to access local images
minikube -p minikube docker-env | Invoke-Expression
docker build --tag api-image .
kubectl apply -f k8s_deployment.yaml
kubectl expose deployment api-deployment --type=NodePort --port=7080 
minikube service api-deployment 
