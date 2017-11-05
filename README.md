![Kubernetes logo.](/diagrams/icon.png)

# 🐳 Learning Kubernetes ☸️
**Goal:** Get familiar with the *Kubernetes Docs* at [https://kubernetes.io/docs](https://kubernetes.io/docs).

## ⚠️ State of matters as of November 2017 ⚠️

- I've decided to put learning Kubernetes on hold indefinetely (= I see no reason to bother doing it) as it just seems unnecessary complex while offering no significant benefits compared to Docker Swarm Mode. In other words, **I've decided to abandon the project**.

- Learn **Docker Swarm Mode**:
  * <https://docs.docker.com/compose/compose-file/>
  * <https://docs.docker.com/compose/swarm/>

- **Interesting:** Kubernetes will be integrated into Docker alongside Docker Swarm Mode in the next version of Docker. Read: <https://blog.docker.com/2017/10/kubernetes-docker-platform-and-moby-project/>

## Introduction to Kubernetes

Kubernetes has existed for a much longer time that *Docker Swarm Mode* and has since gathered a lot of followers. It has been tested thouroughly in production environments.

Kubernetes is thought to be more complex but also more configurable than *Docker Swarm Mode*.

![The new containerized paradigm.](/diagrams/containerized-model.png)


## Kubernetes objects

A Kubernetes object is a “record of intent”–once you create the object, the Kubernetes system will constantly work to ensure that object exists. By creating an object, you’re effectively telling the Kubernetes system what you want your cluster’s workload to look like; this is your cluster’s **desired state**.

### Spec = Desired State

A Kubernetes object's *Spec* is defined by us (in a *.yaml* file) and represents the state **we desire for the object to have**.

A Kubernetes object's *Status* is that objects **actual state**.

> For example, a Kubernetes Deployment is an object that can represent an application running on your cluster. When you create the Deployment, you might set the Deployment spec to specify that you want three replicas of the application to be running. The Kubernetes system reads the Deployment spec and starts three instances of your desired application–updating the status to match your spec. If any of those instances should fail (a status change), the Kubernetes system responds to the difference between spec and status by making a correction–in this case, starting a replacement instance.

```yaml
apiVersion: apps/v1beta2 # Kubernetes API Version
kind: Deployment # Kind of Kubernetes Object
metadata: # Data to help identify the object
  name: nginx-deployment
spec: # Description of the desired state
  replicas: 3
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.7.9
        ports:
        - containerPort: 80
```

```sh
$ kubectl create -f 1-nginx/nginx-deployment.yaml --record

deployment "nginx-deployment" created
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

## Imperative commands sample for NGINX deployment

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

## Declarative management of Kubernetes objects (kubectl apply)

[https://kubernetes.io/docs/tutorials/object-management-kubectl/declarative-object-management-configuration/](https://kubernetes.io/docs/tutorials/object-management-kubectl/declarative-object-management-configuration/)

Core terminlogy / concepts:

1. Object configuration file / configuration file to pass to `kubectl apply`.
2. Live configuration (stored in etcd at runtime).
3. Declarative configuration writer (the person or software component who makes the changes to *ojbect configuration files*.

### NGINX example for testing / development

```sh
cd 1-nginx
eval $(minikube docker-env) && docker build -t my-kube-nginx:latest .
kubectl apply -f kube-files/
```
