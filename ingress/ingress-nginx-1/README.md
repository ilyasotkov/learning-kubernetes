# Kubernetes ingress-nginx: An Ingress Controller

```sh
helm install stable/nginx-ingress --name ingress-release -f values.yaml
```

## Default backend service

The default backend is a service which handles all url paths and hosts the nginx controller doesn't understand (i.e., all the requests that are not mapped with an Ingress). A default backend exposes two URLs:

- /healthz that returns 200
- / that returns 404

## Multiple ingress controllers

A single cluster can have multiple ingress controllers (gce and nginx). An ingress resource can pick one using a `kubernetes.io/ingress.class` annotation like so:

```yaml
metadata:
  name: foo
  annotations:
    kubernetes.io/ingress.class: "nginx"
```
