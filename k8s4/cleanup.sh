#kubectl delete all --all
#kubectl delete configmap --all

#!/bin/bash

echo "Deleting service..."
kubectl delete service nginx-deployment

echo "Deleting deployment..."
kubectl delete deployment nginx-deployment

echo "Cleanup complete."
