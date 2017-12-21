# TBD

provider "google" {
  project = "ethereal-argon-186217"
  region  = "europe-west1-d"
}

module "gke_cluster" {
  source = "../modules/gke-cluster"

  # TBD
}
