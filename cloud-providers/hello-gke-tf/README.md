# Using Google Kubernetes Engine

> GCE is Google Compute Engine, which is a raw VM product most analogous to EC2 in AWS. Google Container Engine is "GKE", which I guess is a clever resolution strategy since it's a hosted Kubernetes service (http://kubernetes.io/). GKE is another compute-based offering, but helps you deploy autoscaling services on Docker.

## Creating a Kubernetes cluster in GKE GUI

A fairly simple "fill out a form" experience. TODO document it as a tutorial, explore all options

## Creating a Kubernetes cluster in GKE via Terraform

Now that we've created a Kubernetes cluster in GKE by filling out a form at <https://console.cloud.google.com/>, let's not leave that experience undocumented and limited to using the GUI.

We'll use Terraform to create the cluster.

## Creating a Kubernetes cluster in GKE via kops

TODO
