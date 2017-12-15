# Guide to Kubernetes at any scale

This is an experimental guide structure.

### 1. Create a Kubernetes cluster

  * Create a Kubernetes cluster from cloud provider resources
    * Amazon AWS
    * Google GCP
    * Microsoft Azure
    * OpenStack
    * Custom: bare metal or raw virtual resources
  * Upgrade a Kubernetes cluster
  * Maintain a Kubernetes cluster

### 2. Configure and administer a Kubernetes cluster

#### Human access to Kubernetes API
  * Authentication for Kubernetes API access via client tools (`kubectl` and `helm`)
  * Local `~/.kube/config` for `kubectl`
  * Set up authentication for fellow human users
    * Default Cloud Authentication
      * GKE
      * ...
    * Using tokens
    * Using x509 client certificates
    * Using Keystone for authentication
  * Set up RBAC to prevent Bob from destroying Alice's work

#### Storage

  * Set up StorageClasses
  * Create `PersistentVolumeClaim` using the StorageClasses

#### Networking

  * Set up an Ingress Controller (LoadBalancer) and TLS certificates
    * nginx ingress
    * ...

#### Monitoring and Alerting

  * Deploy a number of monitoring tools
    * Prometheus
    * Grafana
    * ...
  * Test monitoring alerts and correct data sources

#### Continous Integration Tools

  * Deploy any Continous Delivery / Continous Deployment tools
    * CI / CD
    * Jenkins
    * Drone
    * Gogs
    * GitHub
    * GitLab
  * ⬇️ Go to the next step to test Continous Deployment ⬇️

### 3. Deploy a number of apps (via Helm packages) into the `hello-world` namespace

  * Jekyll, Hugo static websites
  * A Rails/React app
  * A wordpress website
  * Moodle
  * ...
