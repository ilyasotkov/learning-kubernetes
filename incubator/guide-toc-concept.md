# Guide to Kubernetes at any scale

This is an experimental guide structure.

1. Create a Kubernetes cluster
  * Infrastructure as code
  * Cloud Provider API
    * AWS
    * GCP
    * Microsoft Azure
    * OpenStack
  * Maintain a Kubernetes cluster
  * Upgrade a Kubernetes cluster
2. Configure and administer a Kubernetes cluster
  * Configure `kubectl` in `~/.kube/config` for human access
  * Set up authentication for fellow human users
    * Using tokens
    * Using x509 client certificates
    * Using Keystone for authentication
  * Set up RBAC to prevent Bob from destroying Alice's work
  * Set up StorageClasses
  * Create `PersistentVolumeClaim` using the StorageClasses
  * Set up an Ingress Controller (LoadBalancer) and TLS certificates
    * nginx ingress
    * ...
  * Deploy a number of monitoring tools
    * Prometheus
    * Grafana
    * ...
  * Test monitoring alerts and correct data sources
  * Deploy any Continous Delivery / Continous Deployment tools
    * CI / CD
    * Jenkins
    * Drone
    * Gogs
    * GitHub
    * GitLab
  * Go to the next step to test Continous Deployment ⬇️
3. Deploy a number of apps (via Helm packages) into the `hello-world` namespace
  * Jekyll, Hugo static websites
  * A Rails/React app
  * A wordpress website
  * Moodle
  * ...
