# Introduction to Kubernetes

## What is Kubernetes?

Our Kubernetes cluster takes in

1. Docker images in `Dockerfile` format

2. Cloud environement defininition in `.tf` (Hashicorp Terraform) format

as inputs and creates an orchestrated system of containerized workload, storage, and networking abstractions: the Kubernetes API.

### Layered Complexity

#### Set up a Kubernetes Cluster

You negotiate with a cloud provider like Amazon Web Services (AWS), Microsoft Azure, or Google Cloud. They can give you a turn-key Kubernetes cluster -- AKS, EKS, GKE, or a raw VM images for you to install Kubernetes onto. You can also build a private cloud in case on-premises servers are required.

| Hardware | Virtual Hardware | Kubernetes Cluster | Kubernetes API YAML |
| --- | --- | --- | --- |
| On-premises Hardware | VMWare Instances | Kubernetes installation (Ansible) | Helm Charts and Releases |
... | ... | EKS (Amazon), GKE (Google), AKS (Azure) | Kubernetes API YAML |
... | Google Computer Engine Instance | Kubernetes Installation | Kubernetes API YAML |
... | Scaleway VMs | Kubernetes Installation | Kubernetes API YAML |

### Kubernetes vs Docker Swarm

...

## Cloud Computing

### Public Kubernetes Clusters

...

### Private Kubernetes Clusters

#### The Hard Way

...

#### The Easy Way

...

## Kubernetes Workflow Overview

### Managing Kubernetes Cloud Providers and Clusters

...

### Managing Kubernetes API Access

...

### Using Kubernetes API declaratively via Helm Releases

...
