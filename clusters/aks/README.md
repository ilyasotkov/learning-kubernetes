# Use Azure AKS Kubernetes cluster

⚠️ TBD

This depends on Terraform's support of Azure's new **AKS**. As of December 2017, Terraform only supports Azure's old **ACS**.

Use a Google Cloud GKE cluster for now.

## Requirements

### Creating a service principal for a Kubernetes cluster

```sh
az account show --query "{subscriptionId:id, tenantId:tenantId}"
```

```sh
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
```

### What is an Azure "service principal"?

A `service_principal` is a credential for an application.

<https://docs.microsoft.com/en-us/azure/azure-stack/azure-stack-create-service-principals>
