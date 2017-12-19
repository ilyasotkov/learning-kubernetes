# Introduction to Kubernetes

## 🤔 What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute**, **storage**, and **networking resources**. Kubernetes is also known as the most popular way to bring containerized (dockerized) software to production at a scale.

### What are the benefits of using Kubernetes?

If you already know the benefits of developing software using Docker (or containers in general), then *there you got it*. Kubernetes just happens to be the most popular way to bring your containerized software to production at a scale.

### Kubernetes inputs and outputs

If Kubernetes seems complicated, try looking at the big picture: the inputs you are expected to have and the outputs are getting in return.

In terms of inputs, you need two things:

1. Have a *generic* (suitable for any environment and any cluster) container image.
2. Have a package of *Kubernetes API YAML* objects. The package will reference the generic container image, configure it for your specific environment, and specify exacly *how* you want to run it in the cloud.

**Note:** to make Kubernetes API YAML code dry and reusable, we'll use the [Helm package manager](https://helm.sh) for templating and packaging everything together.

Once you feed the YAML objects to the *Kubernetes API Server*, you should expect to have highly-available, production-grade application or service running in your cloud. It's that simple!

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
