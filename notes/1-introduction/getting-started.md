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

### Parameterizing via Helm package manager

<https://docs.helm.sh/>
