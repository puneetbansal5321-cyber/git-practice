#!/bin/bash

set -e

echo "Starting Kubernetes Deployment..."

kubectl apply -f k8s/web-deployment.yaml
kubectl apply -f k8s/web-service.yaml

echo "Waiting for rollout..."
kubectl rollout status deployment/web

echo "Deployment Completed Successfully"
