# Create a Kubernetes cluster

## Hosted Kubernetes on GKE, AKS, EKS

On GKE (Google), AKS (Microsoft), and EKS (Amazon), I'd expect the price of Kubernetes nodes to be the same as price for normal compute instances, now or in the near future. That is simply because *Kubernetes* is a buzzword and people wanting to try Kubernetes in production is something all three companies can profit from. Having higher prices on Kubernetes instances would probably turn people to using Kubernetes installations on raw compute instances instead, which would in turn make the hosted Kubernetes solution less popular, not more.

Hosted Kubernetes clusters are easy to use. Here are the steps to go from zero to a bare Kubernetes cluster on GKE:

1. Create a Google Account
2. Add credit card info to [Google Cloud Platform](/) (and get free $300 to spend)
3. Set up `gcloud` CLI locally
4. Create cluster via creating 1 `cluster.tf` file and running `terraform apply`
5. Go to [Lab 2](/)
