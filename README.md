The original readme is in apiREADME.md
# Launch
The script is based on minikube, (at least the final service tunnel), i.e., use \
`
minikube start
`
beforehand, then run which should open your browser on localhost connecting to the uvicorn server running in docker printing a wonderful {"Hello": "World"}\
`
myClscript.sh
`
\
Docker container runs a uvicorn webserver.


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
