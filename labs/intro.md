# Project Introduction and Concepts

## What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute, storage, and networking resources**. Kubernetes is also known as the most popular production-grade orchestrator for containerized applications and services.

### Kubernetes Inputs and Outputs

#### Kubernetes inputs

- Container images (that are built from Dockerfiles) stored in some private or public container image registry, like [hub.docker.com](https://hub.docker.com/), [gcr.io](https://cloud.google.com/container-registry/), [quay.io](https://quay.io/)
- A collection of Kubernetes API objects expressed in YAML markup usually pre-packaged with [Helm](https://helm.sh/)

#### Kubernetes output

- A highly-available, production-grade application or service running in a cloud

## Project goals

- Learn to set up and administer Kubernetes clusters of any scale
- Estabilish a smooth *declarative* workflow for deploying containerized applications and services to Kubernetes clusters

## Compare Kubernetes to non-containerized infrastructure

If you're wondering how it compares to hosting non-containerized apps, here are two comparison tables, for both on-premises and public cloud infrastructure:

- 🛠 means installation is your responsibility
- ☁️ means installation is managed by the cloud provider
- ❌ means the component is not implemented

### On-premises infrastructure (bare-metal data centers)

| Solution | Physical Hardware | Virtual Hardware | Container Runtime | Orchestrator |
| --- | --- | --- | --- | --- |
| On-premises bare-metal deployments | 🛠 On-premises data center | ❌ | ❌ | ❌ |
| On-premises virtual hardware deployments | 🛠 On-premises data center | 🛠 VMware vSphere | ❌ | ❌ |
| On-premises Kubernetes deployments | 🛠 On-premises data center | 🛠 VMware vSphere | 🛠 Docker | 🛠 Kubernetes |

### Public cloud infrastructure

| Solution | Physical Hardware | Virtual Hardware | Container Runtime | Orchestrator |
| --- | --- | --- | --- | --- |
| Non-containerized raw cloud VMs | ☁️ Hardware | ☁️ VMs | ❌ | ❌ |
| Raw cloud VM Kubernetes | ☁️ Hardware | ☁️ VMs | 🛠 Docker (via kops) | 🛠 Kubernetes (via kops) |
| Hosted Kubernetes: GKE, EKS, AKS | ☁️ Hardware | ☁️ VMs | ☁️ Docker | ☁️ Kubernetes |

## Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express **the desired state** of any external resources **in code** that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](/) or [GitHub Flow](/).

The result is that you can always know the state of your infrastructure by simply **reading code**. You also have to do less work, simply telling the computer to read from the source repository and make sure the state of the infrastructure is just like you declared it.

You're free to use a text editor of your choice (like Atom or Vim) and you're free to use a Git interface of your choice (like GitUp, Sourcetree, or Git CLI).

| Workflow | Actions |
| --- | --- |
| Imperative | `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, and many more |
| Declarative | `apply` and `destroy` |
