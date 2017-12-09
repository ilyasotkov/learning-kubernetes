# Using Google Kubernetes Engine

> GCE is Google Compute Engine, which is a raw VM product most analogous to EC2 in AWS. Google Container Engine is "GKE", which I guess is a clever resolution strategy since it's a hosted Kubernetes service (http://kubernetes.io/). GKE is another compute-based offering, but helps you deploy autoscaling services on Docker.

## Connect to a freshly created Kubernetes cluster

<https://cloud.google.com/kubernetes-engine/docs/how-to/creating-a-container-cluster>

## Managing a Kubernetes cluster in GKE GUI

A fairly simple "fill out a form" experience.

## Managing a GKE Cluster using CLI (official method)

```sh
gcloud config set project ethereal-argon-186217
gcloud config set compute/zone europe-west1-d
gcloud container clusters create hello-cli-cluster
```

## Managing a Kubernetes cluster in GKE via Terraform

Now that we've created a Kubernetes cluster in GKE by filling out a form at <https://console.cloud.google.com/>, let's not leave that experience undocumented and limited to using the GUI / CLI.

We'll use Terraform to create the cluster *declaratively* in `cluster.tf`.

## Issues

- Terraform unnecessarily recreates resources.
- Updating a node pool destroys the existing node pool first and then creates a new one, causing downtime. Resources are saved though, and will go back up by themselves.
- No way to update node sizes (CPU / memory) without tearing everything down? `DaemonSet`s require more CPU to enable Prometheus.
- Autoscaling doesn't scale back if resources are abundant?

## Store Terraform state in Google Cloud Storage

TODO

## Creating a Kubernetes cluster in GKE via kops

TODO
