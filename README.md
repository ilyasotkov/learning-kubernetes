![Kubernetes logo.](/artwork/icon.png)
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

## 2-kubernetes-basics

[https://kubernetes.io/docs/tutorials/kubernetes-basics/cluster-intro/](https://kubernetes.io/docs/tutorials/kubernetes-basics/cluster-intro/)

Concept comparison:

| *Docker Swarm Mode* | *Kubernetes* |
|----------|:-------------:|
| Leader manager |  Master |
| Manager |  --- |
| Worker node |  Node |
| service |  Pod |
| Stack |  Service |
| `docker service ls` | `kubectl get pods` |
| `docker inspect` | `kubectl describe` |
| `docker logs` | `kubectl logs` |
| `docker exec [CONTAINER] [COMMAND]` | `kubectl exec [POD] -- [COMMAND]` |
| `docker exec $CONTAINER_NAME bash` | `kubectl exec -ti $POD_NAME bash` |
| --- | `kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080` |

A `Pod` in Kubernetes is a group of application containers and some shared resources, such as volumes, networks, container specs. `Pod` in Kubernetes is similar to the concept of `stack` (or `service` ??? unclear) in Docker Swarm Mode.

Pods are the atomic unit on the Kubernetes platform. When we create a Deployment on Kubernetes, that Deployment creates Pods with containers inside them (as opposed to creating containers directly).

A `Service` in Kubernetes is a concept very different from a Docker Swarm Mode service. It has more to do with networks and exposing Deployments.

A Service in Kubernetes is an abstraction which defines a logical set of Pods and a policy by which to access them.

https://kubernetes.io/docs/tutorials/kubernetes-basics/expose-intro/

## Kubernetes Commands

```sh
minikube version
minikube start
kubectl version
kubectl cluster-info
kubectl get nodes

kubectl run kubernetes-bootcamp --image=docker.io/jocatalin/kubernetes-bootcamp:v1 --port=8080
kubectl get deployments
kubectl proxy

kubectl get pods
kubectl describe pods
kubectl logs $POD_NAME
kubectl exec $POD_NAME env
kubectl exec -ti $POD_NAME bash

kubectl get services
kubectl describe services/kubernetes-bootcamp
kubectl describe deployment
kubectl get pods -l run=kubernetes-bootcamp
kubectl get services -l run=kubernetes-bootcamp
kubectl label pod $POD_NAME app=v1

kubectl delete service -l run=kubernetes-bootcamp
kubectl get services


```
