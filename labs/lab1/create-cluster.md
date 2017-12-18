# Create a Kubernetes cluster

## 👌 Hosted Kubernetes on GKE, AKS, EKS

Hosted Kubernetes clusters are easy to create and manage. On GKE, using Kubernetes will [cost you no more](https://cloud.google.com/kubernetes-engine/pricing) that using normal GCE instances. Here are the steps to go from zero to a bare Kubernetes cluster on GKE:

1. Create a Google Account
2. Add credit card info to [Google Cloud Platform](/) (and get free **$300** to spend on the platform)
3. Set up `gcloud` CLI locally
4. Create cluster by adding `gke-cluster.tf` file and running `terraform init` and `terraform apply`

```tf
# gke-cluster.tf

provider "google" {
  project = "my-project-999"
  region  = "europe-west1-d"
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
