# Administering and Managing Kubernetes Environements

This chapter deals with Kubernetes-level communication at the administrator level.

## Step-by-step

1. Create a Kubernetes cluster and an auto-scaling node pool. You create the cluster as a certain Google Account holder, in a certain project within a certain zone.

2. Initial-connect to the cluster.

3. Initialize Helm, install system (storage, ingress, monitoring) packages.

4. Install hello-world app packages to make sure everything is cool.

5. Set up authentication (`kubectl` ability) for your team members, using one of the following methods:
  * Private keys distributed through some secure company IM
  * Using bearer tokens
  * HTTP basic auth
  * An authenticating proxy

## Configure cluster networking

...

## Configure cluster storage

...

## Set up human user access

### Concepts

GCP Project Owner, GCP Project Team Member

Project Owner grants IAM roles to team member so that they can access the project's resources.

### Set up GCP service account to add co-worker access for kubectl

We'll create the ability for our new teammate, Alice Doe, to get full access to Google Kubernetes Engine and to Google Kubernetes Engine Clusters.

TODO: how does using GCP Service Accounts or Google Accounts actually enable the use of tokens for `kubectl` authentication?

```sh
# Create a GCP service account with a unique identifier -- email address.
gcloud iam service-accounts create alice-doe --display-name=alice-doe
# make $alice the account's email address and identifier
alice=$(gcloud iam service-accounts list --format='value(email)' --filter='displayName:alice-doe')
# Create a key file (json)
gcloud iam service-accounts keys create --iam-account $alice alice.json
# Activate the account
gcloud auth activate-service-account $alice --key-file=alice.json

# fail on purpose because you don't have permissions
a-kubectl get nodes

# Set up a-kubectl to use alice-doe service account
alias a-kubectl='kubectl --token="$(gcloud auth print-access-token --account=$alice)"'

# (!!!) Use GCP Console GUI to add permissions for GKE and GKE cluster to alice account

a-kubectl get nodes
```

## Set up monitoring and alerting

...
