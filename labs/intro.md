# Project Introduction and Concepts

## 🤔 What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute**, **storage**, and **networking resources**. Kubernetes is also known as the most popular production-grade orchestrator for containerized services and applications.

### Kubernetes Inputs and Outputs

#### Kubernetes inputs

- One or more container images (built from Dockerfiles) stored in some private or public container image registry, like [hub.docker.com](https://hub.docker.com/), [gcr.io](https://cloud.google.com/container-registry/), [quay.io](https://quay.io/)
- A collection of Kubernetes API objects expressed in YAML (or JSON) markup, for example:
  - Workload objects: `Deployment`, `DaemonSet`
  - Storage objects: `PersistentVolumeClaim`
  - Networking objects: `Service`, `Ingress`

😜 YAML/JSON Kubernetes API objects are often parametrized (pre-processed) and packaged together using [Helm](https://helm.sh/)

#### Kubernetes output

- A highly-available, production-grade application or service running in a cloud

## 📌 Project goals

- Learn to set up and administer Kubernetes clusters of any scale
- Establish a smooth *declarative* workflow for deploying containerized applications and services to Kubernetes clusters

## ➗ Compare Kubernetes to non-containerized infrastructure

If you're wondering how it compares to hosting non-containerized apps, here are two comparison tables, for both on-premises and public cloud infrastructure:

- 🛠 means installation is your responsibility
- ☁️ means installation is managed by the cloud provider
- ❌ means the component is not implemented

### Private cloud infrastructure (on-premises data centers)

| Solution | Physical Hardware | Virtual Hardware (IaaS) | Container Runtime + Orchestrator (PaaS) |
| --- | --- | --- | --- |
| On-premises bare-metal deployments | 🛠 On-premises data center | ❌ | ❌ |
| On-premises virtual hardware deployments | 🛠 On-premises data center | 🛠 VMware vSphere | ❌ |
| On-premises Kubernetes deployments | 🛠 On-premises data center | 🛠 VMware vSphere | 🛠 Docker + Kubernetes |

### Public cloud infrastructure

| Solution | Physical Hardware | Virtual Hardware (IaaS) | Container Runtime + Orchestrator (PaaS) |
| --- | --- | --- | --- |
| Non-containerized raw cloud VMs | ☁️ Data center | ☁️ VMs | ❌ |
| Raw cloud VM Kubernetes | ☁️ Data center | ☁️ VMs | 🛠 Docker + Kubernetes (via kops or Ansible) |
| Hosted Kubernetes: GKE, EKS, AKS | ☁️ Data center | ☁️ VMs | ☁️ Docker + Kubernetes |
