#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
export dockerpath='seahchin/mlmicrokuber'
# Step 2
# Run the Docker Hub container with kubernetes
echo "Docker ID and Image: $dockerpath"
kubectl create deployment mlmicrokuber-node --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployment mlmicrokuber-node --type=LoadBalancer --port=80

kubectl get services

minikube service mlmicrokuber-node