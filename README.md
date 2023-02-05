The original readme is in apiREADME.md
# Launch
The script is based on minikube, (at least the final service tunnel), i.e., use \
`
minikube start
`
beforehand, then run which should open your browser on localhost connecting to the uvicorn server running in docker printing a wonderful {"Hello": "World"}
`
myClscript.sh
`
\


## Usage
Server should be available on localhost afterwards, but the minikube service also opens the browser directly on the correct port
(as the localhost minikube port is dynamic)
\
You can check 
`
localhost:<port>/docs \
`
\
For the REST-API (basic FastApi example)


# Cheat Sheet
Some useful commands when working
### docker
`
    docker build --tag <name> <path-to-dockerfile-directory>
    docker images
    docker ps
`
\
important to check in which context we are running\
`
    docker context ls 
`
\
creates a local docker registry, to find local images\
`
    docker run -d -p 5000:5000 --restart=always --name registry registry:2
`
\
stops the registry\
`
    docker container stop registry
`
### kubernetes
`
    kubectl get <pods/deployment/services/...> --all
    kubectl delete <pods/services/deployment/...> filename> --all
    kubectl logs <pod-name>
`
\
applies a yaml config\
`
    kubectl apply/delete -f <filename>
`
\
exposes a deployment e.g., via nodeport or loadbalancer\
`
    kubectl expose deployment <name> 
`
\
important to check in which context we are running\
`
    kubectl config get-contexts
`
\
### minikube
`
    minikube start (check params)
    minikube delete 
`
\

enables using locak docker images:\


Returns a URL to connect to a service\
`
    minikube service api-deployment 
`