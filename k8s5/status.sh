echo kubectl get deployments
kubectl get deployments

echo kubectl get pods
kubectl get pods



for pod in $(kubectl get pods -l app=nginx -o jsonpath='{.items[*].metadata.name}'); do
  echo "🔹 Logs from nginx pod: $pod"
  kubectl logs $pod | grep "GET"
  echo "----------------------------------------"
done


for pod in $(kubectl get pods -l app=apache -o jsonpath='{.items[*].metadata.name}'); do
  echo "🔹 Logs from apache pod: $pod"
  kubectl logs $pod | grep "GET"
  echo "----------------------------------------"
done


