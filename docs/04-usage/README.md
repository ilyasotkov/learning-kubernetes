# Using Kubernetes Clusters

### Kubernetes API Layers

Think of these objects as something you're going to put into `templates` directory in a Helm Chart. Every file in `templates` is usually a separate Kubernetes API Object.

TODO: Sort all Kubernetes API Object by popularity within github.com/kubernetes/charts repo

##  Workloads

| Object | Type | Broad type | Context | Example |
| --- | --- | --- | --- | --- |
| Deployment | Workload | Compute | ? | Rails App Deployment |
| Job | Workload | Compute | ? | ? |
| DaemonSet | Workload | Compute | ? | ? |
| StatefulSet | Workload | Compute | ? | ? |
| CronJob | Workload | Compute | ? | ? |

## Persistent storage

| Object | Type | Broad type | Example | Context |
| --- | --- | --- | --- | --- |
| Deployment | Workload | Compute | Rails App Deployment | ? |
| Job | Workload | Compute | ? | ? |
| DaemonSet | Workload | Compute | ? | ? |
| StatefulSet | Workload | Compute | ? | ? |
| CronJob | Workload | Compute | ? | ? |

## Cluster networking: service discovery, DNS, IP addresses

...

## Talking to the API server in packages / Helm releases

...
