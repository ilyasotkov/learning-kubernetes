# Using Kubernetes Clusters

### Authoring Kubenetes API Objects

Think of these objects as something you're going to put into `templates` directory in a Helm Chart. Every file in `templates` is usually a separate top-level Kubernetes API Object.

TODO: Sort all Kubernetes API Object by popularity within github.com/kubernetes/charts repo

## Types of top-level Kubernetes API Objects

When I say "top-level", I mean these objects that have their own YAML template file in a Helm chart `templates` directory.

This section should make it easier to reason about Kubernetes objects and how to create new templates for Helm charts.

There is a number of Kubernetes objects that are always contained within another object, like `Container` always has to be inside of a `Pod`.

###  Workload objects

| Object | Type | Broad type | Context | Example |
| --- | --- | --- | --- | --- |
| Deployment | Workload | Compute | ? | Rails App Deployment |
| DaemonSet | Workload | Compute | ? | ? |
| StatefulSet | Workload | Compute | ? | ? |
| Job | Workload | Compute | ? | ? |
| CronJob | Workload | Compute | ? | ? |

### Workload configuration objects

| Object | Type | Broad type | Context | Example |
| --- | --- | --- | --- | --- |
| ConfigMap | Config | Storage | ? | ? |
| Secret | Secret | Storage | ? | ? |

### Persistent storage

| Object | Type | Broad type | Example | Context |
| --- | --- | --- | --- | --- |
| PersistentVolumeClaim | Storage | Storage | ? | ? |

### Cluster networking: service discovery, DNS, IP addresses

| Object | Type | Broad type | Example | Context |
| --- | --- | --- | --- | --- |
| Service | Discovery & Load Balancing | Network | ? | ? |
| Ingress | Discovery & Load Balancing | Network | ? | ? |

### Cluster

| Object | Type | Broad type | Example | Context |
| --- | --- | --- | --- | --- |
| Role, ClusterRole | RBAC | Security | ? | ? |
| RoleBinding, ClusterRoleBinding | RBAC | Security | ? | ? |

### Talking to the API server in packages / Helm releases

| Object | Description |
| --- | --- |
| Chart | A generic Helm chart is a template for a Helm Release. One app chart will usually have several releases (staging, prod, qa) |
| Release | A specific release of a chart. Every release has its unique `values` that override default chart `values`.
