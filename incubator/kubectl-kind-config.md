# Guide to Kubernetes at any scale

This is an experimental guide structure.

1. Create a Kubernetes cluster
  * Maintain a Kubernetes cluster
2. Configure and administer a Kubernetes cluster
  * `kubectl` / local `~/.kube/config` `kind: Config` object
  * Set up authentication for fellow human users using 5 methods
  * Test login and access control features
  * Set up StorageClasses
  * Test `PersistentVolumeClaim` feature
  * Set up an Ingress Controller (LoadBalancer) and TLS certificates
  * Deploy a number of monitoring tools
  * Test monitoring alerts and correct data sources
  * Deploy any Continous Delivery / Continous Deployment tools
  * Go to the next step to test Continous Deployment ⬇️
3. Deploy a number of apps into the `hello-world` namespace
  * Jekyll, Hugo static websites
  * A Rails/React app
  * A wordpress website
  * Moodle
  * ...
