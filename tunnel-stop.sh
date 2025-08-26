#!/bin/bash

echo "🔍 Checking for running 'minikube tunnel' process..."

TUNNEL_PID=$(pgrep -f "minikube tunnel")

if [ -n "$TUNNEL_PID" ]; then
  echo "✅ Found 'minikube tunnel' process with PID $TUNNEL_PID. Killing it..."
  kill -9 "$TUNNEL_PID"
  echo "🛑 Tunnel process terminated."
else
  echo "ℹ️ No 'minikube tunnel' process is currently running."
fi
