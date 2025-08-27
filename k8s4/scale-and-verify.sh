#!/bin/bash

# Desired number of replicas
REPLICAS=3
DEPLOYMENT_NAME=nginx-deployment

echo "Scaling $DEPLOYMENT_NAME to $REPLICAS replicas..."
kubectl scale deployment $DEPLOYMENT_NAME --replicas=$REPLICAS

echo "Waiting for pods to be ready..."
kubectl rollout status deployment/$DEPLOYMENT_NAME

echo "Verifying pod count..."
POD_COUNT=$(kubectl get pods -l app=nginx --field-selector=status.phase=Running --no-headers | wc -l)

if [ "$POD_COUNT" -eq "$REPLICAS" ]; then
  echo "✅ Success: $POD_COUNT pods are running."
else
  echo "❌ Warning: Expected $REPLICAS pods, but found $POD_COUNT running."
fi
