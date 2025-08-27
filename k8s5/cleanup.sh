#!/bin/bash

echo "Deleting service..."
kubectl delete service nginx-service
kubectl delete service apache-service

echo "Deleting deployment..."
kubectl delete deployment nginx-deployment
kubectl delete deployment apache-deployment

echo "Cleanup complete."
