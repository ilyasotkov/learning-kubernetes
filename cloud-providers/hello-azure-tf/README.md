# AzureRM Container Service

⚠️ Terraform doesn't yet support Azures new **AKS**, only the old **ACS**.

### Creating a service principal for a Kubernetes cluster

```sh
az account show --query "{subscriptionId:id, tenantId:tenantId}"
```

```sh
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
```

## What is a service_principal?

A `service_principal` is a credential for an application.

<https://docs.microsoft.com/en-us/azure/azure-stack/azure-stack-create-service-principals>
