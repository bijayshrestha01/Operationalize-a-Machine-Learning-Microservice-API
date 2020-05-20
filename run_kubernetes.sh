#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=beej639/microservices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservices --image=beej639/microservices --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment microservices --type=LoadBalancer --port=80 --target-port=80
kubectl port-forward microservices 8000:80
