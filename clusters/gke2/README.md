# An advanced GKE cluster using Terraform

## Introduction

This cluster tries to use *everything* both Terraform and Terraform GCP provider have to offer.

## Features

- [x] Use Terraform modules
- [ ] Use versioned Terraform modules
- [ ] Use Terragrunt (remote state + state locking)
- [ ] Automate most of the `automation.md` tasks
- [ ] Output useful variables
- [ ] Handle IAM
- [ ] Handle DNS

## Directory structure

```
.
├── README.md
├── live
│   └── prod
│       └── main.tf
└── modules
    └── gke-cluster
        ├── main.tf
        ├── outputs.tf
        └── vars.tf

4 directories, 5 files
```
