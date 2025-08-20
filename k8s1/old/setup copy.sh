
kubectl get all

kubectl apply -f nginx-deployment.yaml

kubectl get service nginx-deployment
kubectl get pods

kubectl expose deployment nginx-deployment --type=NodePort --port=80
kubectl get service nginx-deployment


kubectl describe deployment nginx-deployment
kubectl describe pod <pod-name>


kubectl get deployment nginx-deployment
kubectl describe deployment nginx-deployment



kubectl delete deployment nginx-deployment
kubectl delete service nginx-deployment


kubectl describe pod nginx-deployment
