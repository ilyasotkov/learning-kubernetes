# Destroy a Kubernetes cluster

## Hosted Kubernetes on GKE, AKS, EKS

### GKE

You can tear down a cluster by running `terraform destroy`

#### ⚠️ Terraform GKE outstanding issues

- GCP LoadBalancer (created by ingress-nginx) is not deleted using `terraform destroy`

### AKS

⚠️ AKS support for Azure Terraform provider [has not been added yet](https://github.com/terraform-providers/terraform-provider-azurerm/issues/471). If you insist on using AKS *now*, use Azure's GUI or CLI.

### EKS

⛔️ As of late December 2017, [EKS](https://aws.amazon.com/eks/) has not been released to the public yet.

## Up next

[Lab 2 Overview: How do I turn a bare Kubernetes installation into a production-ready cluster?](/labs/lab2/overview.md)
