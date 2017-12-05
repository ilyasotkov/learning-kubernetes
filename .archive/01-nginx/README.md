# A minimal nginx Deployment (+ Service) with a ConfigMap

## ✅ Create via minikube

```sh
kubectl apply -f .
minikube service nginx-service
```

## ✅ Rolling Updates

Test updating a configMap by making changes to `html-configmap.yaml`, then applying the changes declaratively:

```sh
kubectl apply -f .
```
