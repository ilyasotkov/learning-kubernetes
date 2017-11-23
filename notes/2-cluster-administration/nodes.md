# Kubernetes Master and Worker Nodes

A Kubernetes `Master` is also sometimes referred to as **master node**. A Kubernetes `Node` is also sometimes referred to as **worker node**. Each `Node` has services that are necessary to run pods. Each node is managed by master components such as (TODO).

A Kubernetes `Node` is just a phisycal representation of a computer existing in reality in some form, just like a `StorageClass` a representation of an external storage-creating capability.

## What roles can a Master Node play?

- API Server
- etcd (backing store)
- Manager of controllers, such as `node controller`, `replication controller`, `endpoints controller`, `service account & token controller`
- Manager of cloud controllers
- Kubernetes Scheduler (select a node for a scheduled pod)
- Add-ons:
  * DNS (for Kubernetes services)
  * Web UI (Dashboard)
  * Container Resource Monitoring
  * Cluster-level logging

Node's condition (health measures):

- OutOfDisk (True is insufficient free space for adding new pods)
- Ready (True if the node is healthy and ready to accept new pods)
- MemoryPressure (True if the node memory is low)
- DiskPressure (True if disk capacity is low)
- NetworkUnavailable (True if the network for the node is not configured)

## Node Components

### kubelet

A kubelet takes a set of PodSpecs that are provided through various mechanisms (primarily through the apiserver) and ensures that the containers described in those PodSpecs are running and healthy.

### kube-proxy

TODO

### Container runtime

TODO

### supervisord

Process monitor and control system to keep kubelet and container runtime running.

### fluentd

Allows cluster-level logging.

### Capacity (aka Resources)

- CPU
- Memory
- Maximum number of pods that can be schedules onto the node
