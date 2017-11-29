# Kubernetes Architecture

A look into the possible future of Kubernetes cluster management -- Self-hosted Kubernetes <https://github.com/kubernetes/community/blob/master/contributors/design-proposals/cluster-lifecycle/self-hosted-kubernetes.md#what-is-self-hosted>

## Bootkube - A self-hosted Kubernetes cluster

<https://www.youtube.com/watch?v=EbNxGK9MwN4>

This a cutting edge solution for managing Kubernetes components from within Kubernetes itself. That means that if I wanted to bump the version of the Kubernetes API server, I'd simply edit a YAML file, commit the changes to git, which would trigger a `kubectl apply` via a CI system.

That would let us run a High-Availability Kubernetes cluster.

Kubernetes-in-Kubernetes or Kubeception 😎
