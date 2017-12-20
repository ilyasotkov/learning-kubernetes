# Authentication: allow access to cluster resources

## Authentication on Google Kubernetes Engine (GKE)

First, let's review how GKE integrates with Kubernetes for authentication.

Google Cloud Platform (GCP) is itself is a platform (IaaS) that can manages users and roles. GCP IAM (Identity and Access Management) integrates with Kubernetes token authentication mechanism, which results in this workflow:

- You can create a service account on GCP
- You get a personal token for that account
- You can then use the token to talk to the cluster `kube-apiserver`

## Up next

### 👤 [Authorization: grant access to cluster users](/labs/lab2/)
