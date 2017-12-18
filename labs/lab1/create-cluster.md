# Create a Kubernetes cluster

## 👌 Hosted Kubernetes on GKE, AKS, EKS

Hosted Kubernetes clusters are easy to use. On GKE, using Kubernetes will [cost you no more](https://cloud.google.com/kubernetes-engine/pricing) that using normal GCE instances. Here are the steps to go from zero to a bare Kubernetes cluster on GKE:

1. Create a Google Account
2. Add credit card info to [Google Cloud Platform](/) (and get free **$300** to spend on the platform)
3. Set up `gcloud` CLI locally
4. Create cluster via creating 1 `cluster.tf` file and running `terraform apply`
5. Connect to the cluster by configuring `~/.kube/config`
6. Go to [Lab 2](/labs/lab1/create-cluster.md) to get the cluster ready for production
