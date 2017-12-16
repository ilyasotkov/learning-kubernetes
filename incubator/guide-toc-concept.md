# Guide to Kubernetes at any scale

Learning Kubernetes should be a fluid process that just *makes sense*. Documentation should be concise, well-structured, and practical in nature.

Here's a proposal table of contents that attemps to make *the most sense*:

### 1. Rent Kubernetes clusters from cloud providers

  * Create and upgrade a Kubernetes cluster
    * Amazon AKS
    * Google GKE
    * Microsoft Azure AKS
    * OpenStack
    * Custom: bare metal or raw virtual resources

### 2. Administer Kubernetes clusters

#### Authentication (login) to a Kubernetes cluster API

  * Accessing the Kubernetes API using local client tools, `kubectl` and `helm`
  * Configure a local `kind: Config` file in `~/.kube/config`
  * Set up authentication for co-workers
    * Default Cloud Authentication
      * GKE and GCP service accounts
      * ...
    * Using static basic auth
    * Using static token CSV files
    * Using x509 client certificates
    * Using Keystone for authentication
    * Using OpenID Connect
    * Webhook token authentication (GitHub)

#### Restrict access to Kubernetes clusters

  * Role-Based Access Control
  * Set up RBAC to prevent Bob from destroying Alice's work

#### Storage

  * Default StorageClasses
  * Set up custom StorageClasses
  * Create `PersistentVolumeClaim` using the StorageClasses

#### Networking

  * Set up an Ingress Controller (LoadBalancer) and TLS certificates
    * NGINX Ingress Controller
    * kube-lego (Let's Encrypt TLS)
    * Istio Framework

#### Monitoring and alerting

  * Deploy a number of monitoring tools
    * Prometheus
    * Grafana
    * ...
  * Set up alerting

#### Continous Integration tools

  * Deploy any Continous Delivery / Continous Deployment tools
    * CI / CD
    * Jenkins
    * Drone
    * Gogs
    * GitHub
    * GitLab
  * ⬇️ Go to the next step to test Continous Deployment ⬇️

### 3. Use Kubernetes clusters (deploy apps onto clusters)

  * Jekyll, Hugo static websites
  * A Rails/React app
  * A wordpress website
  * Moodle
  * ...
