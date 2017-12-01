# Copy of deployments/nginx-3 using Helm

This is an exact copy of deployments/nginx-3 but with a better structure by means of using Helm.

```sh
helm create nginx-release
```

## Deployment

A hello-world (copy of `nginx-4`) but using istio IngressController.

```sh
helm template nginx-5/nginx-release/ | istioctl kube-inject -f - | kubectl apply -f -
```
```sh
helm template nginx-5/nginx-release/ | istioctl kube-inject -f - | kubectl delete -f -
```
