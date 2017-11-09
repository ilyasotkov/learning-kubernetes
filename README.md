![Kubernetes logo.](/diagrams/icon.png)

# 🐳☸️ Learning Kubernetes 🐳☸️
**Goals:**
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

## Commands to get started in the local environment

```sh
minikube version
minikube start
kubectl version
kubectl cluster-info
kubectl get nodes # get is like "ls"
kubectl get deployments
kubectl describe deployment nginx-deployment
```

## Deployments

```sh
kubectl apply -f ./deployment.yaml
kubectl delete -f ./deployment.yaml
```

### Minimal NGINX deployment with helpful comments
