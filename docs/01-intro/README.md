# Introduction to Kubernetes

## What is Kubernetes?

| Input | Output | Task |
| --- | --- | --- |
| cluster.tf | Kubernetes Cluster | Create a Kubernetes cluster |
| Dockerfile | Docker image | Create a generic container image |
| Docker images + Helm Charts + `values.yaml`| Kubernetes API Objects | Release a workload onto the cluster |

## Kubernetes Environments

| Price | Hardware | Virtual Hardware | Kubernetes Cluster | Kubernetes API Client |
| --- | --- | --- | --- | --- |
| $$$$ | On-premises Hardware | VMWare Instances | Kubernetes installation (Ansible) | Helm Charts and Releases |
| $$$ | ... | ... | EKS (Amazon), GKE (Google), AKS (Azure) | Helm Charts and Releases |
| $$$ | ... | Google Compute Engine Instance | Kubernetes Installation (Ansible or kops) | Helm Charts and Releases |
| $$ | ... | AWS EC2 Instance | Kubernetes Installation (Ansible or kops) | Helm Charts and Releases |
| $ | ... | Scaleway VMs | Kubernetes Installation (Ansible) | Helm Charts and Releases |

### Kubernetes API Layers

...
