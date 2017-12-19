# Project Introduction and Concepts

## 🤔 What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute**, **storage**, and **networking resources**. Kubernetes is also known as the most popular way to bring containerized (dockerized) software to production at a scale.

### Tell me about the benefits of using Kubernetes

If you already know the benefits of developing software using Docker (or containers in general), then *there you got it*. Kubernetes just happens to be the most popular way to **bring your containerized software to production**.

### Kubernetes Inputs and Outputs

#### Kubernetes inputs

- One or more container images (built from Dockerfiles) stored in some private or public container image registry, like [hub.docker.com](https://hub.docker.com/), [gcr.io](https://cloud.google.com/container-registry/), [quay.io](https://quay.io/)
- A collection of Kubernetes API objects expressed in YAML (or JSON) markup, for example:
  - Workload objects: `Deployment`, `DaemonSet`
  - Storage objects: `PersistentVolumeClaim`
  - Networking objects: `Service`, `Ingress`

♻️ To make *Kubernetes API YAML* code dry and reusable, we'll use the [Helm package manager](https://helm.sh) for templating and packaging everything together

#### Kubernetes outputs

- A highly-available, production-grade application or service running in a cloud

## Compare Kubernetes to hosting non-containerized software

If you're wondering how using Kubernetes compares to hosting non-containerized apps and services, here are two comparison tables, for both private on-premises infrastructure and public cloud infrastructure:

- ☁️ means installation is automated and managed by the cloud provider
- 🛠 means installation is your responsibility
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
| Non-containerized raw VM deployments | ☁️ Data center | ☁️ VMs | ❌ |
| Raw cloud VM Kubernetes deployments | ☁️ Data center | ☁️ VMs | 🛠 Docker + Kubernetes (via kops or Ansible) |
| Hosted Kubernetes deployments on GKE, EKS, AKS | ☁️ Data center | ☁️ VMs | ☁️ Docker + Kubernetes |
