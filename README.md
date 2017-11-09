# Learning Kubernetes

## ✊ Goals

- Estabilish a smooth workflow for deploying containerized services to a Kubernetes cluster.
- Get familiar with the *Kubernetes Docs* at [https://kubernetes.io/docs](https://kubernetes.io/docs).

## ✅ Updates and news

- 🎉 **Kubernetes News:** Kubernetes will be integrated into Docker alongside Docker Swarm Mode in the next version of Docker. Read: <https://blog.docker.com/2017/10/kubernetes-docker-platform-and-moby-project/>

- 📖 Read more about **Kubernetes**: <https://kubernetes.io/docs>

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

### Minimal example

```sh
kubectl apply -f minimal-examples/ # Apply all configuration in the directory
minikube service nginx-service # Go to the browser to see the service
```

This is a minimal example of an nginx Deployment and a Service to expose the Deployment.

### Full example

```sh
kubectl apply -f full-examples/
minikube service nginx-full-service
```

We took the nginx Deployment from the minimal example and explicitly wrote down all default values and keys.
