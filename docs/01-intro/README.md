# Introduction to Kubernetes

## What is Kubernetes?

Kubernetes is an abstracted platform for consuming cloud compute, storage, and networking resouces.

| Input | Output | Task |
| --- | --- | --- |
| `cluster.tf` | Kubernetes Cluster | Create a Kubernetes cluster |
| `Dockerfile` | Docker image | Create a generic container image |
| Docker images + Helm Charts + `values.yaml`| Kubernetes API Objects | Release a configured Helm Chart |

## Kubernetes Environments

Kubernetes is still a beta platform, and mature Kubernetes PaaS are lacking. AWS, for example, as of 2018, has announced EKS (Elastic Container Service) but has not yet released it to the public. Microsoft Azure released AKS (Azure Kubernetes Service) in the end of 2017. Google's GKE (Google Kubernetes Engine) is the most mature PaaS as of 2018.

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
