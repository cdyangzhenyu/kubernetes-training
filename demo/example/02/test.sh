kubectl create namespace demo-02
kubectl apply -f redis-master-controller.yaml 
kubectl apply -f redis-master-service.yaml 
kubectl apply -f redis-slave-controller.yaml 
kubectl apply -f redis-slave-service.yaml 
kubectl apply -f frontend-controller.yaml 
kubectl apply -f frontend-service.yaml 

