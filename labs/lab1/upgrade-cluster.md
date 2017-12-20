# Upgrade a Kubernetes cluster

- [Google Kubernetes Engine (GKE)](#google-kubernetes-engine-gke)
- [Microsoft Azure Container Service for Kubernetes (AKS)](#microsoft-azure-container-service-for-kubernetes-aks)
- [Amazon Elastic Container Service for Kubernetes (EKS)](#amazon-elastic-container-service-for-kubernetes-eks)

First of all, why would you need to upgrade your clusters? Here are some use cases:

- TODO
- ...

## Google Kubernetes Engine (GKE)

Just change the cluster definition in `gke-cluster.tf` and apply the changes by running `terraform apply`.

**TODO:** application through a CI pipeline on git push

### ⚠️ Terraform GKE outstanding issues

- Terraform unnecessarily recreates resources.
- Updating a node pool destroys the existing node pool first and then creates a new one, causing downtime. Kubernetes resources are saved though, and will go back up by themselves.
- No way to update node sizes (CPU / memory) without tearing everything down?
- Autoscaling doesn't scale back if resources are abundant? Need to test.
- `terraform destroy` will not delete an Google Cloud LoadBalancer created when we deploy `nginx-ingress`. Need to do it manually.

## Microsoft Azure Container Service for Kubernetes (AKS)

⛔️ AKS support for Azure Terraform provider [has not been added yet](https://github.com/terraform-providers/terraform-provider-azurerm/issues/471).

If you insist on using AKS *now*, use Azure's GUI or CLI.

## Amazon Elastic Container Service for Kubernetes (EKS)

⛔️ As of late December 2017, [EKS](https://aws.amazon.com/eks/) has not been released to the public yet.

## Up next

[Destroy a Kubernetes cluster](/labs/lab1/destroy-cluster.md)
