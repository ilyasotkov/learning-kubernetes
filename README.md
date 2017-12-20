# Learning Kubernetes

![Cloud Native](https://img.shields.io/badge/cloud-native-81bfe8.svg)
![Uses Docker](https://img.shields.io/badge/uses-docker-50a3cf.svg)
![Uses Kubernetes](https://img.shields.io/badge/uses-kubernetes-3176e1.svg)
![Uses Helm](https://img.shields.io/badge/uses-helm-10a3eb.svg)
![Uses Terraform](https://img.shields.io/badge/uses-terraform-5956e3.svg)

An opinionated guide to administering and using Kubernetes clusters

⚠️ This is a work in progress

## ⚗️ Labs

### Lab 0: Background information

- [What is Kubernetes? What are the benefits of using Kubernetes?](/labs/intro/kubernetes-intro.md)
- [Compare Kubernetes to deploying software directly onto bare metal or virtual machines](/labs/intro/kubernetes-compare.md)
- [Goals and principles of this Kubernetes guide](/labs/intro/goals-and-principles.md)

### Lab 1: Create and upgrade a Kubernetes cluster

[📋 Lab Overview: How do I create a Kubernetes cluster and how do I maintain it?](/labs/lab1/overview.md)

- [Create a Kubernetes cluster](/labs/lab1/create-cluster.md)
- [Upgrade a Kubernetes cluster](/labs/lab1/upgrade-cluster.md)
- [Destroy a Kubernetes cluster](/labs/lab1/destroy-cluster.md)

### Lab 2: Get your cluster ready for production

[📋 Lab Overview: How do I turn a bare Kubernetes installation into a production-ready cluster?](/labs/lab2/overview.md)

- [Authentication: allow access to cluster resources](/labs/lab2/authentication.md)
- [Authorization: limit access to cluster resources](/labs/lab2/)
- [Persistent storage](/labs/lab2/)
- [Networking, load balancing, and ingress management](/labs/lab2/)
- [Monitoring and alerting](/labs/lab2/)
- [Continous Integration (CI) tools](/labs/lab2/)

### Lab 3: Deploy software onto your cluster

[📋 Lab Overview: What's the best way to consume Kubernetes cluster resources?](/labs/lab3/)

- [Create a Helm chart](/labs/lab3/)
- [Install a Helm chart](/labs/lab3/)
- [Manage Helm releases](/labs/lab3/)

## 📌 Goals

- Learn to set up and administer Kubernetes clusters of any scale
- Establish a smooth *declarative* workflow for deploying containerized applications and services to Kubernetes clusters
- Get familiar with the *Kubernetes Docs* at [https://kubernetes.io/docs](https://kubernetes.io/docs)
- Read real-world [case studies](https://github.com/ramitsurana/awesome-kubernetes#case-studies)

## 🔗 Quick Links

| Description | Address |
| --- | --- |
| Kubernetes Documentation | https://kubernetes.io/docs  |
| Kubernetes API Reference | https://kubernetes.io/docs/api-reference/v1.8/ |
| Helm Documentation | https://docs.helm.sh/ |
| ramitsurana/awesome-kubernetes | https://github.com/ramitsurana/awesome-kubernetes |


## ✅ Updates and news

- 🎉 **Kubernetes News:** Kubernetes will be integrated into Docker alongside Docker Swarm mode in Docker for Mac. Read: <https://blog.docker.com/2017/10/kubernetes-docker-platform-and-moby-project/>

- 📖 A comprehensive article about approaches and future approaches to managing Kuberntes applications declaratively: <https://docs.google.com/document/d/1cLPGweVEYrVqQvBLJg6sxV-TrE5Rm2MNOBA_cxZP2WU/edit?usp=sharing>

- 🐳 Alternative native deployment solution, **Docker Swarm mode**:
  * <https://docs.docker.com/compose/compose-file/>
  * <https://docs.docker.com/engine/swarm/>
