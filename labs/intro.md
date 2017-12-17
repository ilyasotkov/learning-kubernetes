# Project Introduction and Concepts

## What is Kubernetes?

Kubernetes is an open-source platform for consuming cloud **compute, storage, and networking resources**. Kubernetes is also known as the most popular production-grade orchestrator for containerized applications, a competitor to Docker Swarm mode or Apache Mesos.

If you're wondering how it compares to hosting non-containerized apps, here's a comparison table:

- 🛠 means installation is your responsibility
- ☁️ means installation is managed by the cloud provider
- ❌ means the component is not implemented

| Solution | Physical Hardware (Data Center) | Virtual Hardware | Container Runtime | Orchestrator |
| --- | --- | --- | --- | --- |
| On-premises bare-metal deployments | 🛠 On-premises data center | ❌ | ❌ | ❌ |
| On-premises virtual hardware deployments | 🛠 On-premises data center | 🛠 VMware vSphere | ❌ | ❌ |
| Cloud virtual hardware deployments: EC2, GCE, Linode, Scaleway | ☁️ Hardware | ☁️ VMs | ❌ | ❌ |
| On-premises Kubernetes deployments | 🛠 On-premises data center | 🛠 VMware vSphere | 🛠 Docker | 🛠 Kubernetes |
| Manual cloud Kubernetes installation | ☁️ Hardware | ☁️ VMs | 🛠 Docker (via kops) | 🛠 Kubernetes (via kops) |
| Hosted Kubernetes: GKE, EKS, AKS | ☁️ Hardware | ☁️ VMs | ☁️ Docker | ☁️ Kubernetes |

### Bare metal

Many years ago, the only way for a company to deploy software was to invest into building a data center, then deploy software directly on the bare metal (with an OS installed). At a scale, you'd meet the dreaded configuration drift, snowflake servers, and fear to touch anything that's already working. And everything was painfully slow.

### Virtual Hardware

TODO

VMs and Hypervisors, cloud VMs: computationally expensive virtualization, mostly same problems as bare metal

### Containers

TODO

Containers, Docker and Kubernetes: cheap to create virtualization, microservices architecture

### Kubernetes platform inputs and outputs

**Kubernetes inputs**:

- Container images (built from Dockerfiles) in some private or public container image registry
- A collection of Kubernetes API objects expressed as YAML markup

**Kubernetes output**:

A scalable production-grade application or service running in a cloud.

## Project goals

- Learn to set up and administer Kubernetes clusters of any scale
- Estabilish a smooth *declarative* workflow for deploying containerized applications and services to Kubernetes clusters

## Everything as code

In our labs, we keep our use of CLIs and GUIs to a minimum, instead looking to express **the desired state** of any external resources **in code** that can be committed to a git repository and managed with a familiar developer workflow, like [git-flow](/) or [GitHub Flow](/).

The result is that you can always know the state of your infrastructure by simply **reading code**. You also have to do less work, simply telling the computer to read from the source repository and make sure the state of the infrastructure is just like you declared it.

You're free to use a text editor of your choice (like Atom or Vim) and you're free to use a Git interface of your choice (like GitUp, Sourcetree, or Git CLI).

| Workflow | Actions |
| --- | --- |
| Imperative | `get`, `list`, `create`, `delete`, `init`, `add`, `rollback`, and many more |
| Declarative | `apply` and `destroy` |
