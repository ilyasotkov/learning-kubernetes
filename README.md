# Learning Kubernetes

Kubernetes has existed for a much longer time that *Docker Swarm Mode* and has since gathered a lot of followers. It has been tested thouroughly in production environments.

Kubernetes is thought to be more complex but also more configurable than *Docker Swarm Mode*.

## 1 - nginx

```sh
# Get it rolling
kubectl create -f nginx-deployment.yaml
kubectl replace -f nginx-deployment.yaml
kubectl delete deployment nginx-deployment
#
# Other commands:
# Check that we can access Kubernetes API
kubectl cluster-info
# Grab IP address of the Minikube cluster
minikube status
# List active deployments
kubectl get deployments
kubectl get deployment nginx-deployment
kubectl describe services
```
