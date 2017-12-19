# Create a Kubernetes cluster

As I want this guide to be as simple as possible, we're going to use a *hosted* Kubernetes solution. "Hosted" means that we'll let a cloud provider install and preconfigure the cluster for us instead of doing that manually. Hosted Kubernetes clusters are easy to create and manage. The "big three" of public cloud providers — Amazon, Google, Microsoft — have all announced a hosted (managed) Kubernetes platform, with Google Kubernetes Engine being the most mature solution as of late December 2017.

You might now be thinking "Isn't it more expensive than using normal virtual servers?" The answer is that hosted Kubernetes will cost you no more than normal compute instances ([at AKS](https://azure.microsoft.com/en-us/pricing/details/container-service/), [at GKE](https://cloud.google.com/kubernetes-engine/pricing)). That's because cloud providers know that their long-term competitive advantage in cloud computing is state-of-the-art data centers, not proprietary software.

If you want to get familiar with how Kubernetes really works underneath the covers of a hosted Kubernetes solution, I urge you to go through these guides (be prepared to spend some time on these, Kubernetes setup is pretty complicated):

- [\[Kubernetes Docs\] Setting up a Kubernetes cluster](https://kubernetes.io/docs/setup/)
- [\[Kelsey Hightower\] Kubernetes the Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way)

Let's spin up some Kubernetes clusters! 👏

## Google Kubernetes Engine (GKE)

Here are the steps to go from zero to a bare Kubernetes cluster on GKE:

1. Create a Google Account
2. Add credit card info to [Google Cloud Platform](/) (and get free $300 to spend on the platform)
3. Set up `gcloud` CLI locally
4. Create cluster by adding `gke-cluster.tf` file and running `terraform init` and `terraform apply`

```tf
# gke-cluster.tf

provider "google" {
  project = "my-project-999" # Your GCP Project name
  region  = "europe-west1-d" # Default region
}

resource "google_container_node_pool" "np" {
  name               = "node-pool"
  zone               = "europe-west1-d"
  cluster            = "${google_container_cluster.my-cluster.name}"
  node_count = 1

  autoscaling {
    min_node_count = 0
    max_node_count = 5
  }

  node_config {
    machine_type = "n1-standard-2"
  }
}

resource "google_container_cluster" "my-cluster" {
  name               = "my-cluster"
  zone               = "europe-west1-d"
  initial_node_count = 1

  cluster_ipv4_cidr  = "10.20.0.0/14"
  node_version       = "1.8.4-gke.0"
  min_master_version = "1.8.4-gke.0"
  enable_legacy_abac = "true"
  subnetwork         = "default"

  node_config {
    machine_type = "n1-standard-2"
  }
}
```

5. Connect to the cluster by configuring `~/.kube/config`
6. Go to [Lab 2](/labs/lab2/overview.md) to get the cluster ready for production

## Microsoft Azure Container Service for Kubernetes (AKS)

⛔️ AKS support for Azure Terraform provider [has not been added yet](https://github.com/terraform-providers/terraform-provider-azurerm/issues/471).

If you insist on using AKS *now*, use Azure's GUI or CLI.

## Amazon Elastic Container Service for Kubernetes (EKS)

⛔️ As of late December 2017, [EKS](https://aws.amazon.com/eks/) has not been released to the public yet.

## Up next

[Upgrade a Kubernetes cluster](/labs/lab1/upgrade-cluster.md)
