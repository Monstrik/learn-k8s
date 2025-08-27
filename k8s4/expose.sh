
echo RUNING: kubectl expose deployment nginx-deployment --type=NodePort --port=80
kubectl expose deployment nginx-deployment --type=NodePort --port=80

echo RUNING: minikube service nginx-deployment
minikube service nginx-deployment

#kubectl port-forward svc/nginx 8080:80
