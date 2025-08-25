kubectl get endpoints nginx -o wide



sudo curl -s --header "Connection: close" http://127.0.0.1



kubectl exec nginx-2 -- cat /usr/share/nginx/html/index.html
kubectl logs nginx-0 -c init-html
