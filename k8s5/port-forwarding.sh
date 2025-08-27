#kubectl port-forward pod/nginx-deployment-86c57bc6b8-d8v84 8080:80
#kubectl port-forward pod/nginx-deployment-86c57bc6b8-dh2hp 8080:80
#kubectl port-forward pod/nginx-deployment-86c57bc6b8-wpxrt 8080:80

#kubectl port-forward service/nginx-service 8080:80
kubectl port-forward service/apache-service 8080:80


#
#    🔹 Port-forwarding the Pod
#    Direct connection to the container running inside the pod.
#    Bypasses Kubernetes networking and service abstraction.
#    Useful for debugging or testing a specific pod.
#    If you scale your deployment to multiple pods, you'd need to forward each pod individually.
#
#    🔹 Port-forwarding the Service
#    Connects through the Kubernetes Service, which is the intended abstraction for accessing pods.
#    Handles load balancing if there are multiple pods behind the service.
#    More representative of how traffic would flow in a real-world setup.
#    Recommended for testing how your app behaves when accessed through Kubernetes networking.
#