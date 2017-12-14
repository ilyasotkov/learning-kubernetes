# Manage a Google Cloud GKE Kubernetes Cluster

## Quickly spin up or destroy a GKE cluster

We can use Terraform to declaratively manage GKE clusters. Terraform will use your local `gcloud` configuration to access the Google Cloud.

```sh
terraform apply
```

```sh
terraform destroy
```

## Known Issues

- Terraform unnecessarily recreates resources.
- Updating a node pool destroys the existing node pool first and then creates a new one, causing downtime. Kubernetes resources are saved though, and will go back up by themselves.
- No way to update node sizes (CPU / memory) without tearing everything down?
- Autoscaling doesn't scale back if resources are abundant? Need to test.
- `terraform destroy` will not delete an Google Cloud LoadBalancer created when we deploy `nginx-ingress`. Need to do it manually.
