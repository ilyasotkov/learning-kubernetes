provider "google" {
  project = "ethereal-argon-186217"
  region = "europe-west1-d"
}

resource "google_container_cluster" "hello-cluster" {
  name = "hello-cluster"
  zone = "europe-west1-d"
  initial_node_count = 2
  cluster_ipv4_cidr = "10.20.0.0/14"
  node_version = "1.8.3-gke.0"
  min_master_version = "1.8.3-gke.0"
  enable_legacy_abac = "true"
  subnetwork = "default"
  node_config {
    machine_type = "g1-small"
  }
}
