echo kubectl get deployments
kubectl get deployments

echo kubectl get pods
kubectl get pods



for pod in $(kubectl get pods -l app=nginx -o jsonpath='{.items[*].metadata.name}'); do
  echo "🔹 Logs from pod: $pod"
  kubectl logs $pod | grep "GET"
  echo "----------------------------------------"
done
