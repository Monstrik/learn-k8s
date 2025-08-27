kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml

kubectl apply -f apache-deployment.yaml
kubectl apply -f apache-service.yaml

minikube ip