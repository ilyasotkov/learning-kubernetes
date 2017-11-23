# Kubernetes Master Components

<https://kubernetes.io/docs/concepts/overview/components/>

The Kubernetes Master (also sometimes *master node*). These components are assumed for a Kubernetes Master that will not be running any workloads itself and will have some *worker nodes* to schedule them to.

## kube-apiserver

Exposes the Kubernetes [API](https://kubernetes.io/docs/api-reference/v1.8/).

## etcd

⚠️ BACKUP THIS! ⚠️

A backing store that has all the data a Kubernetes cluster will need.

## kube-controller-manager

A single binary that manages the various controllers of a Kubernetes cluster:

- Node Controller
- Replication Controller (for Pods)
- Endpoints Controller (joins Services & Pods)
- Service Account & Token Controllers (create default accounts, API access tokens for namespaces)

### cloud-controller-manager

⚠️ ALPHA feature ⚠️

cloud-controller-manager allows cloud vendors code and the Kubernetes core to evolve independent of each other.

## kube-scheduler

Assigns a node for pods that have not yet been created, and selects a node for them to run on.

## Cluster DNS

Cluster DNS is a DNS server, in addition to the other DNS server(s) in your environment, which serves DNS records for Kubernetes services.
