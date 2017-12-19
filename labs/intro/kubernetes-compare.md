# Compare Kubernetes to hosting non-containerized software

If you're wondering how using Kubernetes compares to deploying software directly onto bare metal and virtual machines, following are two comparison tables, for private on-premises infrastructure and public cloud infrastructure:

- ☁️ means installation is automated and managed by the cloud provider
- 🛠 means installation is your responsibility
- ❌ means the component is not implemented

Looking at the two tables from top to bottom, the more 🛠 there are in a row, the more decisions there to be made on our part, and the more ☁️ in a row, the less decisions.

Keep in mind that having bare-metal data centers is extremely rare for new companies of virtually any size, simply because using public cloud providers is more cost-efficient. Private on-premises clouds are usually used only in cases where it's required by law.

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
