# An advanced GKE cluster using Terraform

## Introduction

This cluster tries to use *everything* both Terraform and Terraform GCP provider have to offer.

## Features

- [x] Use Terraform modules
- [ ] Use a fully containerized local client
- [ ] Use versioned Terraform modules
- [ ] Use Terraform remote state with encryption
- [ ] Automate most of the `automation.md` tasks
- [ ] Output useful variables
- [ ] Handle IAM
- [ ] Use CloudFlare via Terraform Provider [DNS](https://www.terraform.io/docs/providers/cloudflare/index.html)
- [] Use Google DNS via Terraform 

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
