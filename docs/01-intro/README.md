# Introduction to Kubernetes

## What is Kubernetes?

Our Kubernetes cluster takes in

1. Docker images in `Dockerfile` format

2. Cloud environement defininition in `.tf` (Hashicorp Terraform) format

as inputs and creates an orchestrated system of containerized workload, storage, and networking abstractions: the Kubernetes API.

## Layered Complexity with isolated layers

### Kubernetes Setups

You negotiate with a cloud provider like Amazon Web Services (AWS), Microsoft Azure, or Google Cloud. They can give you a turn-key Kubernetes cluster -- AKS, EKS, GKE, or a raw VM images for you to install Kubernetes onto. You can also build a private cloud in case on-premises servers are required.

| Hardware | Virtual Hardware | Kubernetes Cluster | Kubernetes API Client |
| --- | --- | --- | --- |
| On-premises Hardware | VMWare Instances | Kubernetes installation (Ansible) | Helm Charts and Releases |
... | ... | EKS (Amazon), GKE (Google), AKS (Azure) | Helm Charts and Releases |
... | Google Compute Engine Instance | Kubernetes Installation (Ansible or kops) | Helm Charts and Releases |
... | Scaleway VMs | Kubernetes Installation (Ansible) | Helm Charts and Releases |

### Kubernetes API Layers

...
