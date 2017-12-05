# Kubernetes Notes

<https://github.com/ramitsurana/awesome-kubernetes#paas>

## Cluster administration

### Cluster creation

Cloud providers:

- Using Google Cloud
- Using AWS
- Using something cheap, e.g. DigitalOcean, Linode, **Scaleway**

Bare metal:

- Using Rasberry Pi

### Cluster upgrades

All Kubernetes clusters should be upgraded by making changes to the cluster repository and committing to `master` branch.

All Kubernetes components should run in high-availability mode, so that upgrades are always zero-downtime.

### Setting up authentication

- 1 person (cluster admin)
- 2-100 users
- 10,000+ users

### Managing access of individual users

TODO

## Cluster usage

### Manage secrets

- TLS certificates for global DNS
- TLS certificates for private services
- Application secrets (passwords and secret tokens)

### Write and upgrade applications

- Deploy a hello-world rails application
- Upgrade it
- Remove it

### More usage

TODO
