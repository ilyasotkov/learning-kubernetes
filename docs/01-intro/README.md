# Introduction to Kubernetes

## What is Kubernetes?

Kubernetes is an abstracted platform for consuming cloud compute, storage, and networking resources.

First, you create a cluster by renting a server from a cloud provider.

Second, you administer access to the cluster so that the Kubernetes API can be securely used by all of your co-workers that you wish to grant access to.

Third, you perform CRUD operations on a variety of Kubernetes API **objects** to manipulate cloud compute, storage, and networking resources.

### Everything as Code

We want to manage all of these tasks declaratively or "as code", meaning that we prefer to keep all cluster configuration and administration specs **in files** that are *commited to a git repository*.

We could do that in YAML, but the experience would be similar to writing a static website in vanilla HTML without any template engine, as the Kubernetes API is somewhat verbose and there's some repetition.

A very stardard solution for our templating needs is Helm, which also deals with abstracting a group of Kubernetes API objects into *Helm Charts*. Combine these Charts with configuration values, and your can instruct helm to install a *Release*.

| Input | Output | Task |
| --- | --- | --- |
| `cluster.tf` | Kubernetes Cluster | Create a Kubernetes cluster |
| `Dockerfile` | Docker image | Create a generic container image |
| Docker images + Helm Charts + `values.yaml`| Kubernetes API Objects | Install a Helm Release |

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
