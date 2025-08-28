eval $(minikube docker-env)
docker build -t backend-image ./backend
docker build -t frontend-image ./frontend


kubectl apply -f .

#kubectl apply -f