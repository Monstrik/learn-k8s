#!/bin/bash

# Number of replicas in the StatefulSet
REPLICAS=3
STATEFULSET_NAME=nginx

echo "Testing NGINX pods in StatefulSet '$STATEFULSET_NAME'..."

for i in $(seq 0 $((REPLICAS - 1))); do
  POD_NAME="${STATEFULSET_NAME}-${i}"
  echo -e "\nChecking pod: $POD_NAME"

  kubectl exec "$POD_NAME" -- curl -s localhost | grep '<h1>'
done
echo -e "\nAll pods checked successfully."

