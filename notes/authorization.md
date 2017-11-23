# Authorization in Kubernetes

<https://kubernetes.io/docs/admin/authorization/>

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
