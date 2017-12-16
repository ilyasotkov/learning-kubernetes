# Guide to Kubernetes at any scale

Learning Kubernetes should be a fluid process that just *makes sense*. Documentation should be concise, well-structured, and practical in nature.

Here's a proposal table of contents that attemps to make *the most sense*:

### 1. Create a Kubernetes cluster

  * Create a Kubernetes cluster using a cloud provider's resources
    * Amazon AWS
    * Google GCP
    * Microsoft Azure
    * OpenStack
    * Custom: bare metal or raw virtual resources
  * Upgrade a Kubernetes cluster
  * Maintain a Kubernetes cluster

### 2. Configure and administer a Kubernetes cluster

#### Human access to Kubernetes API
  * Accessing the Kubernetes API using local client tools, `kubectl` and `helm`
  * Configure a local `kind: Config` file at `~/.kube/config`
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
