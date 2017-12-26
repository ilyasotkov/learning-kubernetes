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


## Common commands (the thin imperative layer)

- Create cluster repository (with sane defaults)
- (Optional) Personalize before cluster creation
- Create infrastructure (cloud provider -level) + perform cluster configuration (kubernetes-level)
- Use external (public or private) charts to quickly configure and spin up Kubernetes apps (a.k.a. Helm Releases)

## Compare a Kubernetes framework to Rails

I want there to be an established workflow (with beautiful code and impeccable architecture) for managing Kubernetes clusters.

Let's compare it to a web framework like Rails.

| Concept | Rails | Exekube |
| Backend | SQL database | Cloud infrastructure (data center) |
| Relational mapping | SQL <-> Ruby | VMs <-> Nodes, PersistentVolumes <-> Cloud-specific storage solutions, etc. |
| Front end | ERB (templates) + HTML | Helm templates + Kubernetes API YAML |
