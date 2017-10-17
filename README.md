# Learning Kubernetes Deployment Framework

After learning *Docker Swarm mode*, I came to the conclusion that it has great potential, but not ready yet as a product.

Kubernetes seems like a non-native feature that has existed for a much longer time and has a lot of followers.

It is thought to be more complex but also more configurable that *Docker Swarm mode*.

## First NGINX Kubernetes deployment

```sh
minikube status
kubectl get nodes
kubectl cluster-info
kubectl get deployments
kubectl get deployment nginx-deployment
kubectl describe services
kubectl create -f nginx-deployment.yaml
kubectl replace -f nginx-deployment.yaml
```
