docker build ./nginx/ -t nginx-minikube
docker run -p 80:80 nginx-minikube