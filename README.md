# Learning Kubernetes

## ✊ Goals

- Estabilish a smooth workflow for deploying containerized services to a Kubernetes cluster.
- Get familiar with the *Kubernetes Docs* at [https://kubernetes.io/docs](https://kubernetes.io/docs).

## 🔗 Quick Links

| Description | Address |
| --- | --- |
| Kubernetes Documentation  | https://kubernetes.io/docs  |
| Kuernetes API Reference   | https://kubernetes.io/docs/api-reference/v1.8/ |

## ✅ Updates and news

- 🎉 **Kubernetes News:** Kubernetes will be integrated into Docker alongside Docker Swarm Mode in the next version of Docker. Read: <https://blog.docker.com/2017/10/kubernetes-docker-platform-and-moby-project/>

- 📖 A comprehensive article about approaches and future approaches to managing Kuberntes applications declaratively: <https://docs.google.com/document/d/1cLPGweVEYrVqQvBLJg6sxV-TrE5Rm2MNOBA_cxZP2WU/edit?usp=sharing>

- 🐳 Alternative native deployment solution, **Docker Swarm Mode**:
  * <https://docs.docker.com/compose/compose-file/>
  * <https://docs.docker.com/compose/swarm/>

## Introduction to Kubernetes

## CLI commands to get started in the local environment

```sh
minikube version
minikube start
kubectl version
kubectl cluster-info
kubectl get nodes
```

## Declarative management commands

```sh
kubectl apply -f .
# deployment "nginx-deployment" created
# service "nginx-service" created

kubectl delete -f .
# deployment "nginx-deployment" deleted
# service "nginx-service" deleted
```

## Deployments

<https://kubernetes.io/docs/api-reference/v1.8/#deployment-v1beta2-apps>

A *Deployment* is a type of Kubernetes *workload*. Workloads are objects you use to manage and run your containers on the cluster.

### Nginx Deployment minimal example

```sh
kubectl apply -f minimal-examples/ # Apply all configuration in the directory
minikube service nginx-service # Go to the browser to see the service
```

This is a minimal example of an nginx Deployment and a Service to expose the Deployment.

### Nginx Deployment full example

```sh
kubectl apply -f full-examples/
minikube service nginx-full-service
```

The goal here is to create a production-grade Nginx Deployment using the best practices and 100% declarative workflow.

## Pods

We'll usually define a *PodSpec* in the context of a Deployment:

```yaml
# ...
kind: Deployment
spec:
  template:
    spec: # PodSpec <- <- <-
      containers:
      - name: nginx
        image: nginx:1.13.6-alpine
```

- Containers within a pod share an IP address and port space, and can find each other via localhost.
- Applications within a pod also have access to shared volumes, which are defined as part of a pod and are made available to be mounted into each application’s filesystem.
- Like individual application containers, pods are considered to be relatively ephemeral (rather than durable) entities.
- When something is said to have the same lifetime as a pod, such as a volume, that means that it exists as long as that pod (with that UID) exists.
- Pods can be made durable by using *controllers* (e.g. Deploymements).

## Configuration management

### ConfigMaps and Secrets

#### Examples:

- <https://github.com/kubernetes/k8s.io>

### Parameterizing via ktmpl tool

<https://github.com/jimmycuadra/ktmpl>
