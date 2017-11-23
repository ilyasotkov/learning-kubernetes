# Kubernetes Node (ex. minion)

A Kubernetes node is also sometimes referred to as **worker node**. Each node has services that are necessary to run pods. Each node is managed by master components such as (TODO).

A Kubernetes `Node` is just a phisycal representation of a computer existing in reality in some form, just like a StorageClass a representation of an external storage-creating capability.

## A Kubernetes `Node` has these properties:

```
- What are the node's addresses?
- Alright, his hostname is ..., his external IP is ..., his internal IP is ...

- What's Cronus's internal IP?
- His internal IP is ...
```

Node's addresses:

- HostName
- ExternalIP
- InternalIP


```
- Does the node have any (health) conditions?
- I don't think so. He's good.

- Is Cronus under memory pressure?
- Nah, man! He's doesn't have any conditions.
```

## What roles can a Node play?

- API Server
- etcd (backing store)
- Manager of controllers, such as `node controller`, `replication controller`, `endpoints controller`, `service account & token controller`
- Manager of cloud controllers
- Kubernetes Scheduler

And some add-ons:

- DNS (for Kubernetes services)
- Web UI (Dashboard)
- Container Resource Monitoring
- Cluster-level logging

Node's condition (health measures):

- OutOfDisk (True is insufficient free space for adding new pods)
- Ready (True if the node is healthy and ready to accept new pods)
- MemoryPressure (True if the node memory is low)
- DiskPressure (True if disk capacity is low)
- NetworkUnavailable (True if the network for the node is not configured)

## Node Components

### kubelet

TODO

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
