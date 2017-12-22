# Kubernetes clusters (infrastructure)

## Introduction

In this section we will deploy several Kubernetes clusters. The goal is to create a production-grade, easy-to-use, easy-to-monitor deployment system, and deploy a few "Hello, world!" apps onto the cluster.

## Features

- [ ] Add a minimal working example for all available hosted Kubernetes solutions
- [ ] Add a full-featured example for all available hosted Kubernetes solutions

## Directory structure

```
.
├── aks
│   └── cluster.tf
├── eks
│   └── cluster.tf
├── gke
│   └── cluster.tf
└── gke2
    ├── live
    │   └── prod
    │       └── main.tf
    └── modules
        └── gke-cluster
            ├── main.tf
            ├── outputs.tf
            └── vars.tf
```

| Directory | Contents description | Ready for use |
| --- | --- | --- |
| `aks` | A minimal AKS example using Terraform | ❌ |
| `eks` | A minimal EKS example using Terraform | ❌ |
| `gke` | A minimal GKE example using Terraform | ✅ |
| `gke2` | A full-featured GKE example using Terraform | ❌ |

## Comparing cloud providers

| Cloud Provider | Kubernetes Solution | 🔗 | Available |
| --- | --- | --- | --- |
| Amazon Web Services (AWS) | EKS | <https://aws.amazon.com/eks/> | ❌ |
| Microsoft Azure | ACS (old) / AKS (new) | <https://docs.microsoft.com/en-us/azure/aks/> | ⚠️ |
| Google Cloud | GKE | <https://cloud.google.com/kubernetes-engine/> | ✅ |

After a couple of days of fiddling with GKE, AWS, Azure ACS (and getting a glance of AKS), that's the impression:

- Terraform + GKE seems to offer the most configuration simplicity and a clean declarative workflow.
- Azure's ACS is a direct competitor to GKE, and seems to have great potential as well. AKS (the new ACS) is not yet supported by Terraform.
- AWS still lacks a turn-key solution.

**NEW!** AMAZON has recently has announced a native Kubernetes solution - **EKS** (Elastic Container Service for Kubernetes): <https://aws.amazon.com/eks/>

`kops` has been the "official" way to host a Kubernetes cluster on AWS, and <https://engineering.bitnami.com/articles/how-bitnami-uses-kops-to-manage-kubernetes-clusters-on-aws.html> offers a glance into a smooth workflow for hosting a Kubernetes cluster on AWS.
