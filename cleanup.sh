kubectl delete deployment nginx-deployment
kubectl delete service nginx-deployment
kubectl delete pod --all


# Delete the StatefulSet
kubectl delete statefulset nginx

# Delete the Service
kubectl delete svc nginx

# Delete the ConfigMap
kubectl delete configmap nginx-html

# Optionally, delete any remaining Pods (should be cleaned up automatically)
kubectl delete pod -l app=nginx
