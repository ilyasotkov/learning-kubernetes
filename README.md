# Learning Kubernetes

Kubernetes has existed for a much longer time that *Docker Swarm Mode* and has since gathered a lot of followers. It has been tested thouroughly in production environments.

Kubernetes is thought to be more complex but also more configurable than *Docker Swarm Mode*.

## 1-nginx

```sh
# Get Minikube IP address
minikube status
# Create deployment
kubectl create -f nginx-deployment.yaml
# Replace deployment (with downtime)
kubectl replace -f nginx-deployment.yaml
# Delete existing deployment
kubectl delete deployment nginx-deployment

# Misc:
kubectl cluster-info
kubectl get deployments
kubectl get deployment nginx-deployment
kubectl describe deployments
```
