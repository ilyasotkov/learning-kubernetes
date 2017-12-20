# Steps for automating

We're likely going to use Ansible to make every interaction automatic. Here we collect the steps of future Ansible tasks.

| Tools | Task |
| --- | --- |
| GUI | Create cloud provider (GCP) account, enable billing |
| CLI, Ansible, Terraform | Download cloud provider SDK (Google Cloud SDK), add binary path to `$PATH` |
| Terraform | Login into cloud provider account locally (version control + encrypted secrets) |
| Terraform | Create cluster |
| Terraform | Add cloud roles and users (for GCP) |
| CLI (Terraform?) | Get credentials for cluster |
| Terraform, YAML, or Helm | Add cluster namespaces (virtual clusters) |
| Terraform, YAML, Helm | Add cluster roles and role bindings |
| Terraform, YAML, Helm | Add network policies |
| YAML, CLI | Initiaize Helm |
| YAML | Add persistent storage sources |
| Helm | Launch ingress controller (`ingress-nginx`) |
| Helm | Launch TLS certificates controller (`kube-lego`) |
| Helm | Add monitoring and alerting tools (Prometheus, Grafana) |
| Helm | Add CI tools (Jenkins, Gogs) |
| Helm | Install nginx-webpage chart |
| Helm | Install rails app chart |

Possible solutions to unify interfaces:

Terraform <- Helm charts
