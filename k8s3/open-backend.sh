#!/bin/bash

# Get Minikube IP
MINIKUBE_IP=$(minikube ip)

# Construct the URL
URL="http://${MINIKUBE_IP}:30001/hello"

# Open in default browser (Linux/macOS)
xdg-open "$URL" 2>/dev/null || open "$URL"

# Print the URL for reference
echo "Opening: $URL"
