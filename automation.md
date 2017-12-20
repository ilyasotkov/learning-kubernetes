# Steps for automating

We're likely going to use ansible to make every interaction automatic. Here we collect the steps of future Ansible tasks.

- GUI: Create cloud provider (GCP) account, enable billing
- Ansible: Download cloud provider SDK (Google Cloud SDK), add binary path to `$PATH`
- Terraform: Login into cloud provider account locally (version control + encrypted secrets)
- Terraform: Create cluster
- Terraform: Add cloud roles and users (for GCP)
- CLI: Get credentials for cluster
- Terraform, YAML, Helm: Add cluster namespaces (virtual clusters)
- Terraform, YAML, Helm: Add cluster roles and role bindings
- Terraform, YAML, Helm: Add network policies
- YAML, CLI: Initiate Helm
- Helm: Launch ingress controller (`ingress-nginx`)
- Helm: Launch TLS controller (`kube-lego`)
- YAML: Add persistent storage sources
- Helm: Add monitoring and alerting tools (Prometheus, Grafana)
- Helm: Add CI tools (Jenkins, Gogs)
- Helm: Install nginx-webpage chart
- Helm: Install rails app chart
