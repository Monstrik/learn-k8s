minikube start
eval $(minikube docker-env)


docker build -t backend-app ./backend

#eval $(minikube docker-env -u)
