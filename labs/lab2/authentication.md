# Authentication: allow access to cluster resources

## Authentication on Google Kubernetes Engine (GKE)

<https://cloud.google.com/kubernetes-engine/docs/how-to/iam-integration>

<https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control>

First, let's review how GKE integrates with Kubernetes for authentication.

Google Cloud Platform (GCP) is itself is a platform (IaaS) that manages users and roles (access permissions). GCP IAM (Identity and Access Management) integrates with Kubernetes token authentication mechanism, which results in this workflow:

- You create a service account on GCP
- You get a personal token for that account
- You then use the token to talk to the cluster `kube-apiserver`

In other words, Google identities are used to access the cluster. This provides revocable cluster access and allows users to be given different levels of access (for example, read-only access to cluster resources).

Since we used Terraform to create the cluster, we can also manage creating user and service accounts for both GCP and Kubernetes clusters.

### Create and activate a service account on GCP

```tf
# copypasta
resource "google_project_iam_member" "project" {
  project = "your-project-id"
  role    = "roles/editor"
  member  = "user:jane@example.com"
}
```

## Up next

👤 [Authorization: grant access to cluster users](/labs/lab2/)
