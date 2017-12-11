# Kubernetes Incubator

In the incubator, we are free to experiment with cutting-edge Kubernetes technology that is not production-ready.

Emerging technologies:

- [Helm declarative chart and release managment](#helm-chart-and-release-management)
- [Istio ingress and networking framework](#istio)

## Helm Chart and Release Management

As of December 2017, Helm is a stable tool ready to be used in production. Helm CLI is the official way of managing Helm Charts and Releases.

The problem with Helm CLI is that it's imperative. It contains many commands that you need to type on the command line or bury inside of ugly shell scripts (and who doesn't hate shell scripts?)

Some declarative tools to manage Helm charts and releases need to be developed and standardized as soon as possible. There are already candidates (but none are stable or production-ready):

- [Terraform Helm Provider](https://github.com/mcuadros/terraform-provider-helm)
- [helm-crd](https://github.com/bitnami/helm-crd)
- [Helmfile](https://github.com/roboll/helmfile)

### Helm CLI Example

1. Set up a GKE cluster and connect to it.

```sh
# Use Terraform cluster.tf manifest file to create GKE Kubernetes cluster
cd clusters/gke && terraform apply

# Connect local `kubectl` to the cluster
gcloud container clusters get-credentials my-cluster --zone europe-west1-d --project ethereal-argon-186217
```

2. Set up cluster essentials.

```sh
# Install Ingress Services
helm init \
&& helm init --upgrade \
&& sleep 10 \
&& helm install charts/nginx-ingress/ \
&& helm install charts/kube-lego/
```

3. Go the console, get the IP address of the Ingress Controller LoadBalancer, and point our DNS servers to that address.

4. Add a test static page.

```sh
helm install charts/nginx-webpage
```

### Terraform Declarative Helm Provider (HCL)

⚠️ Not production-ready

TODO

### Helm CRD Controller (CustomResourceDefinition for Helm) (YAML)

⚠️ Not production-ready

TODO

<https://github.com/bitnami/helm-crd>

### Helmfile (YAML)

⚠️ Not production-ready

TODO

## Istio
