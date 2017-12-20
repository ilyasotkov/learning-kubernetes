# Authentication: allow access to cluster resources

## Authentication on Google Kubernetes Engine (GKE)

First, let's review how GKE integrates with Kubernetes for authentication.

Google Cloud Platform (GCP) is itself is a platform (IaaS) that manages users and roles (access permissions). GCP IAM (Identity and Access Management) integrates with Kubernetes token authentication mechanism, which results in this workflow:

- You create a service account on GCP
- You get a personal token for that account
- You then use the token to talk to the cluster `kube-apiserver`

In other words, Google Accounts are used access the cluster.

### Create and activate a service account on GCP

TODO

## Up next

👤 [Authorization: grant access to cluster users](/labs/lab2/)
