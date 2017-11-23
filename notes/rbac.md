# Role Based Access Control

## Kubernetes objects for RBAC

### Role and ClusterRole

A `kind: Role` is a set of permissions within a namespace. A `kind: ClusterRole` is a set of permissions that is cluster-wide, i.e. within all namespaces.

```yaml
kind: Role
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  namespace: default
  name: pod-reader
rules:
  - apiGroups: [""] # core API group
    resources:
      - pods
    verbs:
      - get
      - watch
      - list
```
