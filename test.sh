#!/bin/bash

# This script temporarily creates a pod within your Kubernetes cluster
# to test the round-robin load balancing of the 'nginx' service.

echo "--- Starting test: Sending 10 requests to the nginx service ---"

kubectl run my-proxy \
  --image=busybox \
  -it \
  --rm \
  -- sh -c 'sleep 3;for i in $(seq 1 10); do wget -q -O - http://nginx | grep "<h1>"; done'

echo "--- Test complete. Pod 'my-proxy' has been removed. ---"