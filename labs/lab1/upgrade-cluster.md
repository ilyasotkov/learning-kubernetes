# Upgrade a Kubernetes cluster

## Hosted Kubernetes on GKE, AKS, EKS

### GKE

All commited changes to the `gke-cluster.tf` can be applied by `terraform apply` and handled by the CI pipeline

#### ⚠️ Terraform GKE outstanding issues

- Terraform unnecessarily recreates resources.
- Updating a node pool destroys the existing node pool first and then creates a new one, causing downtime. Kubernetes resources are saved though, and will go back up by themselves.
- No way to update node sizes (CPU / memory) without tearing everything down?
- Autoscaling doesn't scale back if resources are abundant? Need to test.
- `terraform destroy` will not delete an Google Cloud LoadBalancer created when we deploy `nginx-ingress`. Need to do it manually.

### EKS

⛔️ As of late December 2017, [EKS](https://aws.amazon.com/eks/) has not been released to the public yet.

### AKS

⚠️ AKS support for Azure Terraform provider [has not been added yet](https://github.com/terraform-providers/terraform-provider-azurerm/issues/471). If you insist on using AKS *now*, use Azure's GUI or CLI.
