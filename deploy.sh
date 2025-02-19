#!/bin/bash

# Start Minikube
minikube start --driver=docker --addons=ingress,registry

# Set Docker to use Minikube's environment
eval $(minikube -p minikube docker-env)

# Build and load Docker image
docker build -t localhost:5000/nginx-app:latest ./nginx/
minikube image load localhost:5000/nginx-app:latest

# Deploy with Helm
helm upgrade --install nginx-app ./nginx-app \
  --set image.repository=localhost:5000/nginx-app \
  --set image.tag=latest \
  --set image.pullPolicy=IfNotPresent

# Verify Deployment
kubectl get pods
kubectl get svc

# Access Service
echo "Access your app via: minikube service nginx-app"
