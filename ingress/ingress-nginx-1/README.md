# Kubernetes Ingress Controllers and Ingress Resources

<https://kubernetes.io/docs/concepts/services-networking/ingress/>

You can deploy any number of custom ingress controllers in a pod.

## 📝 A note about Kubernetes services

**Service:** A Kubernetes Service that identifies a set of pods using label selectors. Unless mentioned otherwise, Services are assumed to have virtual IPs only routable within the cluster network.

We've "deployed" / created Kubernetes Service objects previously in `/nginx/nginx-*`.

## What's an ingress?

An Ingress is a collection of rules that allow inbound connections to reach the cluster services.

It wouldn't be wrong to call an ingress a **reverse proxy**. Specifically, it's a Kubernetes abstraction over a reverse proxy like NGINX.

An ingress can be configured to give services externally-reachable URLs, load balance traffic, terminate SSL, offer name based virtual hosting, and more.

> SSL termination refers to the process that occurs at the server end of an SSL connection, where the traffic transitions between encrypted and unencrypted forms.

## Examples of ingress resources

<https://kubernetes.io/docs/api-reference/v1.8/#ingress-v1beta1-extensions>

```yaml
apiVersion: v1beta1
kind: Ingress
metadata:
  name: sample-ingress-resource
spec: # IngressSpec
  backend: # IngressBackend
    # ...
  rules: # IngressRule array
    # ...
  tls: # IngressTLS array
    # ...
```

### IngressBackend

A **default backend** capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.

```yaml
# ...
spec: # IngressSpec
  backend:
    serviceName: my-default-service
    servicePort: 8080
```

### IngressRule array

Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.

```yaml
# ...
spec: # IngressSpec
  rules:
    - host: foo.example.com
      http: # HTTPIngressRuleValue
        paths: # HTTPIngressPath array
          - backend:
              serviceName: my-foo-default-service
              servicePort: 8080
            path: /barA
```
