# nginx-5 using Istio IngressController

## Deployment

```sh
helm template 05-nginx/nginx-release/ | istioctl kube-inject -f - | kubectl apply -f -
```
```sh
helm template 05-nginx/nginx-release/ | istioctl kube-inject -f - | kubectl delete -f -
```

## Up next

Set up automatic sidecar injection

<https://groups.google.com/forum/#!topic/istio-users/QB73Mnv9wRg>
