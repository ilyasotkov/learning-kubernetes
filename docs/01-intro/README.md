# Introduction to Kubernetes

## What is Kubernetes?

Kubernetes is an abstracted platform for consuming cloud compute, storage, and networking resouces.

| Input | Output | Task |
| --- | --- | --- |
| `cluster.tf` | Kubernetes Cluster | Create a Kubernetes cluster |
| `Dockerfile` | Docker image | Create a generic container image |
| Docker images + Helm Charts + `values.yaml`| Kubernetes API Objects | Release a configured Helm Chart |

## Kubernetes Environments

Kubernetes is still a beta platform, and mature Kubernetes turnkey solutions are lacking. AWS, for example, as of 2018, has announced EKS (Elastic Container Service) but has not yet released it to the public. Microsoft Azure released AKS (Azure Kubernetes Service) in the end of 2017. Google Cloud GKE (Google Kubernetes Engine) is the most mature production-ready Kubernetes solution as of 2018.

| Price | Hardware | Virtual Hardware | Kubernetes Cluster | Kubernetes API Client |
| --- | --- | --- | --- | --- |
| 💵💵💵💵💵 | On-premises Hardware | VMWare Instances | Kubernetes installation (Ansible) | Helm Charts and Releases |
| 💵💵💵 | ... | Google Compute Engine Instance | Kubernetes Installation (Ansible or kops) | Helm Charts and Releases |
| 💵💵 | ... | AWS EC2 Instance | Kubernetes Installation (Ansible or kops) | Helm Charts and Releases |
| 💵 | ... | Scaleway VMs | Kubernetes Installation (Ansible) | Helm Charts and Releases |
| 💵💵💵 | ... | ... | EKS (Amazon), GKE (Google), AKS (Azure) | Helm Charts and Releases |

### Kubernetes API Layers

| Object | Type | Broad type | Example |
| --- | --- | --- | --- |
| Deployment | Workload | Compute | Rails App Deployment |
| PersistentVolumeClaim | Storage | Storage | Rails Backend PostgreSQL DB |
| ... | ... | ... | ... |

## Setup up your first cluster

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
