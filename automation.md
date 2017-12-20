# Steps for automating

We're likely going to use ansible to make every interaction automatic. Here we collect the steps of future Ansible tasks.

- Create cloud provider (GCP) account, enable billing
- Download cloud provider SDK (Google Cloud SDK)
- Login into cloud provider account locally (version control + encrypted secrets)
- Create cluster
- Add user accounts to cluster
- Add cloud roles and users (for GCP)
- Get credentials for cluster
- Add namespaces (virtual clusters)
- Add cluster roles and role bindings
- Add network policies
- Initiate Helm
- Launch ingress controller (`ingress-nginx`)
- Launch TLS controller (`kube-lego`)
- Add persistent storage sources
- Add monitoring and alerting tools (Prometheus, Grafana)
- Add CI tools (Jenkins)
