# Compare Kubernetes to hosting non-containerized software

If you're wondering how using Kubernetes compares to hosting non-containerized apps and services, here are two comparison tables, for both private on-premises infrastructure and public cloud infrastructure:

- ☁️ means installation is automated and managed by the cloud provider
- 🛠 means installation is your responsibility
- ❌ means the component is not implemented

## Private cloud infrastructure (on-premises data centers)

| Solution | Physical Hardware | Virtual Hardware (IaaS) | Container Runtime + Orchestrator (PaaS) |
| --- | --- | --- | --- |
| On-premises bare-metal deployments | 🛠 On-premises data center | ❌ | ❌ |
| On-premises virtual hardware deployments | 🛠 On-premises data center | 🛠 VMware vSphere | ❌ |
| On-premises Kubernetes deployments | 🛠 On-premises data center | 🛠 VMware vSphere | 🛠 Docker + Kubernetes |

## Public cloud infrastructure

| Solution | Physical Hardware | Virtual Hardware (IaaS) | Container Runtime + Orchestrator (PaaS) |
| --- | --- | --- | --- |
| Non-containerized raw VM deployments | ☁️ Data center | ☁️ VMs | ❌ |
| Raw cloud VM Kubernetes deployments | ☁️ Data center | ☁️ VMs | 🛠 Docker + Kubernetes (via kops or Ansible) |
| Hosted Kubernetes deployments on GKE, EKS, AKS | ☁️ Data center | ☁️ VMs | ☁️ Docker + Kubernetes |

## Up next

[Goals and principles of this Kubernetes guide](/labs/goals-and-principles.md)
