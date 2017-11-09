# 🐳☸️ Learning Kubernetes ☸️🐳

## ✊ Goals:

- Estabilish a smooth workflow for deploying containerized services to a Kubernetes cluster.
- Get familiar with the *Kubernetes Docs* at [https://kubernetes.io/docs](https://kubernetes.io/docs).

## ✅ Updates and news: ✅

- 🎉 **Kubernetes News:** Kubernetes will be integrated into Docker alongside Docker Swarm Mode in the next version of Docker. Read: <https://blog.docker.com/2017/10/kubernetes-docker-platform-and-moby-project/>

- 📖 Read more about **Kubernetes**:
(https://kubernetes.io/docs)

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
kubectl get nodes # get is like "ls"
```

# Declarative management commands

```sh
kubectl apply -f .
# deployment "nginx-deployment" created

kubectl delete -f .
# deployment "nginx-deployment" deleted
```

## Deployments

### Minimal example

This is a very minimal example of an NGINX Deployment.

```sh
cd minimal-examples
kubectl apply -f .
minikube service nginx-service
kubectl delete -f .
```

### Full example

This is an example of the biggest possible YAML configuration file for a Deployment.

```sh
cd full-examples
kubectl apply -f .
minikube service nginx-service
kubectl delete -f .
```
