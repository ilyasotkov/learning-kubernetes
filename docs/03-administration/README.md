# Administering and Managing Kubernetes Environements

This chapter deals with Kubernetes-level communication at the administrator level.

## Step-by-step

1. Create a Kubernetes cluster and an auto-scaling node pool.

2. Connect to the cluster.

3. Initialize Helm, install system (storage, ingress, monitoring) packages.

4. Install hello-world app packages to make sure everything is cool.

## Configure cluster networking

...

## Configure cluster storage

...

## Set up human user access

### Concepts

GCP Project Owner, GCP Project Team Member

Project Owner grants IAM roles to team member so that they can access the project's resources.

### Cloud IAM

We'll create the ability for our new teammate, Alice Doe, to get full access to Google Kubernetes Engine and to Google Kubernetes Engine Clusters.

```sh
gcloud iam service-accounts create alice-doe --display-name=alice-doe
# Created service account [alice-doe].
alice=$(gcloud iam service-accounts list --format='value(email)' --filter='displayName:alice-doe')
# alice-doe@ethereal-argon-186217.iam.gserviceaccount.com
gcloud iam service-accounts keys create --iam-account $alice alice.json
gcloud auth activate-service-account $alice --key-file=alice.json
alias kubectl-alice='kubectl --token="$(gcloud auth print-access-token --account=$alice)"'

# Use Console to add permissions for GKE and GKE cluster to alice account

kubectl-alice get nodes
```

## Set up monitoring and alerting

...
