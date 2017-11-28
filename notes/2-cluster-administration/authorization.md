# Authorization in Kubernetes

<https://kubernetes.io/docs/admin/authorization/>
<https://kubernetes.io/docs/admin/authorization/abac/>

## ABAC vs RBAC

### Attribute-based access control

ABAC = `kind: Policy` object

Attribute-based access control (ABAC) defines an access control paradigm whereby access rights are granted to users through the use of policies which combine attributes together.

### Role-based access control

RBAC = `kind: Role`, `kind: ClusterRole`, `kind: RoleBinding`, `kind: ClusterRoleBinding`

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


## What is authorization in Kubernetes?

Authorization is granting permissions to access a certain Kubernetes resource (object).

If you want to use [a company] cluster, you need to go through that process:

1. Get authenticated.

When you want to do anything (destructive or non-destructive) with the cluster's resources, you need to be authorized to do so or otherwise your request will be denied.

2. Make a request to a resource and either get authorized (request succeeded) or get rejected (request denied).

## Request fields

As a cluster admin, you'll need to carefully devise authorization policies so that the users or services have permission to things they need to have access to but no more.

Any request to the Kubernetes API will have these fields which will be reviewed before a decision is made to either accept or deny a request:

- user
- group
- "extra"
- API
- Request path
- API request verb
- HTTP request verb
- Resource
- Subresource
- Namespace
- API group
