# project-ml-microservice-kubernetes
 Udacity Docker Microservice Kubernetes project.

# CircleCI Build Status
[![CircleCI](https://circleci.com/gh/chinhseah/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/chinhseah/project-ml-microservice-kubernetes/tree/master)

# Description
Project was to operationalize a Python flask app using Kubernetes. App has a sklearn model trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

# Create Environment
1. Create (and activate) a new environment named .devops with Python 3.
```
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
2. Installing dependencies via project Makefile. Many of the project dependencies are listed in the file requirements.txt.
```
make install
```
3. While you still have your .devops environment activated, you will still need to install:
* Docker
* Hadolint
* Kubernetes (Minikube)
4. Run Lint checks
```
make lint
```
# Run App to Get Prediction
## Run in Docker
1. Open terminal window, run script run_docker.sh.
2. Open another terminal window, run script make_prediction.sh to get home price prediction.
3. See output_text_files\docker_out.txt for example of output
## Run in Kubernetes 
1. Open terminal window, start up minikube and run script run kubernetes.sh.

   You may have to run script twice to wait for Kubernetes pod to finish startup and running before setting up service and exposing it with URL and port number you can call.

2. Edit script make_prediction.sh, replace localhost and port number with Kubernetes minikube service's URL and port number.
3. Open another terminal window, run script make_prediction.sh to get home price prediction.
4. To see home price prediction within Kubernetes minikube pod, named *mlmicrokuber-node*, run in terminal:
```
kubectl logs Name_Of_Pod 
```

where name of pod is from ```kubectl get pods```

3. See output_text_files\kubernetes_out.txt for example of output
# Dependencies
* Python 3.7
* Docker
* Hadolint
* Kubernetes (Minikube)

Below is also listed in requirements.txt
* Flask
* numpy
* pandas
* scikit-learn version 0.20.2
* pylint
