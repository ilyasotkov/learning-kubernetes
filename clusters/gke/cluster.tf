provider "google" {
  project = "ethereal-argon-186217"
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
  enable_legacy_abac = "false"
  subnetwork         = "default"

  node_config {
    machine_type = "n1-highcpu-4"
  }
}
