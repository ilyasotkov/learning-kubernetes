# Concept: Kubernetes Framework

Goal: design a Kubernetes-based framework 🤠

- Opinionated
- Web-frameworky experience / workflow
- "Feels familiar"
- Scalable
- **Highest**-level abstration

| Feature | Tool |
| --- | --- |
| Declarative cloud provider management | Terraform |
| Kubernetes API YAML templating | Helm |
| Decalarative Helm package management | ? |
| Automated tests | ? |
| Ingress Controller | nginx-ingress, istio (envoy) |
| Monitoring | Prometheus, Grafana, Zipkin |
| Secret storage and Distribution | In-repo encrypted, Vault |


# Common commands (the thin imperative layer)

- Create cluster repository (with sane defaults)
- (Optional) Personalize before cluster creation
- Create infrastructure (cloud provider -level) + perform cluster configuration (kubernetes-level)
- Use external (public or private) charts to quickly configure and spin up Kubernetes apps (a.k.a. Helm Releases)
