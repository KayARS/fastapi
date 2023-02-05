# Launch
Two launch files 
launch_api.ps1 for windows powershell
and launch_api.sh for linux.
The only difference, is the line to let docker use local images, too.

## Usage
Server should be available on localhost afterwards, but the minikube service also opens the browser directly on the correct port
(as the localhost minikube port is dynamic)

You can check 
'''
localhost:<port>/docs 
'''
For the REST-API (basic FastApi example)


# Cheat Sheet
Some useful commands when working
### docker
'''
docker build --tag <name> <path-to-dockerfile-directory>
docker images
docker ps

//important to check in which context we are running
docker context ls 
'''
### kubernetes
'''
kubectl get <pods/deployment/services/...> --all
kubectl delete <pods/services/deployment/...> filename> --all
kubectl logs <pod-name>

//applies a yaml config
kubectl apply/delete -f <filename>
// exposes a deployment e.g., via nodeport or loadbalancer
kubectl expose deployment <name> 

//important to check in which context we are running
kubectl config get-contexts
'''

### minikube
'''
minikube start (check params)
minikube delete
'''

enables using locak docker images:
'''
minikube -p minikube docker-env | Invoke-Expression
eval $(minikube -p minikube docker-env)
'''

'''
//Returns a URL to connect to a service
minikube service api-deployment 
'''